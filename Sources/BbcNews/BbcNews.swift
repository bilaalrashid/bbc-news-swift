//
//  BbcNews.swift
//  ReadBeeb
//
//  Created by Bilaal Rashid on 27/08/2023.
//

import Foundation
import OSLog
import UIKit

/// A network controller for the BBC News private API, as used by the iOS app.
///
/// This attempts to mimic the User-Agent of the iOS app.
struct BbcNews {
    /// The base URL at which the API is hosted at.
    static let baseUrl = "https://news-app.api.bbc.co.uk"

    /// Checks if a URL is hosted on the BBC News API.
    ///
    /// - Parameter url: The URL to check.
    /// - Returns: If the URL is hosted on the BBC News API.
    static func isAPIUrl(url: String) -> Bool {
        guard let baseHostname = URL(string: self.baseUrl)?.host else { return false }
        guard let hostname = URL(string: url)?.host else { return false }
        return hostname == baseHostname
    }

    /// The session to perform network requests from.
    let session: URLSession

    /// Creates an instance of `BbcNews` for making network requests to the BBC News API.
    ///
    /// This initialises the User-Agent string, based upon the operating system and device that the request is performed from.
    ///
    /// - Parameters:
    ///   - modelIdentifier: The model identifier of the device e.g. iPhone15,2,
    ///   - systemName: The name of the operating system e.g. iOS.
    ///   - systemVersion: The version of the operating system e.g. 16.6.
    init(
        modelIdentifier: String = UIDevice.current.modelIdentifier,
        systemName: String = UIDevice.current.systemName,
        systemVersion: String = UIDevice.current.systemVersion
    ) {
        let configuration = URLSessionConfiguration.default
        configuration.httpAdditionalHeaders = [
            // Pretend to be the BBC News app
            // Example: BBCNews/25339 (iPhone15,2; iOS 16.6) BBCHTTPClient/9.0.0
            "User-Agent": "BBCNews/25339 (\(modelIdentifier); \(systemName) \(systemVersion)) BBCHTTPClient/9.0.0"
        ]
        self.session = URLSession(configuration: configuration)
    }

    /// Fetches the main discovery page of the BBC News app i.e. the page shown in the Home tab
    ///
    /// - Parameter postcode: The first part of the user's UK postcode e.g. W1A.
    /// - Returns: The index discovery page.
    func fetchIndexDiscoveryPage(postcode: String? = nil) async throws -> FDResult {
        let url: String = {
            var url = BbcNews.baseUrl + "/fd/abl?page=chrysalis_discovery&service=news&type=index&clientName=Chrysalis"
            if let postcode = postcode {
                url += "&clientLoc=" + postcode
            }
            return url
        }()

        return try await self.fetchFDUrl(url: url)
    }

    /// Fetches the pages for multiple topics.
    ///
    /// - Parameter topicIds: The topic IDs to fetch.
    /// - Returns: The fetched topic pages.
    func fetchTopicPages(for topicIds: [String]) async throws -> [FDResult] {
        var results = [FDResult]()

        for topicId in topicIds {
            results.append(try await self.fetchTopicPage(for: topicId))
        }

        return results
    }

    /// Fetches the page for a specified topic.
    ///
    /// - Parameter topicId: The topic ID to fetch.
    /// - Returns: The fetched topic page.
    func fetchTopicPage(for topicId: String) async throws -> FDResult {
        let url = BbcNews.baseUrl + "/fd/abl?clientName=Chrysalis&clientVersion=pre-5&page=\(topicId)&type=topic"
        return try await self.fetchFDUrl(url: url)
    }

    /// Fetches a page from the BBC News API.
    ///
    /// - Parameter urlString: The absolute URL to fetch.
    /// - Returns: The fetched page.
    func fetchFDUrl(url urlString: String) async throws -> FDResult {
        Logger.network.debug("Requesting: \(urlString, privacy: .public)")

        guard let url = URL(string: urlString) else {
            throw NetworkError.invalidUrl(url: urlString)
        }

        let (data, response) = try await self.session.data(from: url)

        guard let httpResponse = response as? HTTPURLResponse else {
            throw NetworkError.invalidResponse
        }

        let success = 200..<300
        guard success.contains(httpResponse.statusCode) else {
            throw NetworkError.unsuccessfulStatusCode(code: httpResponse.statusCode)
        }

        let decoder = JSONDecoder()
        return try decoder.decode(FDResult.self, from: data)
    }
}
