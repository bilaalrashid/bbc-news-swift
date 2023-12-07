//
//  BBCNewsAPINetworkController.swift
//  ReadBeeb
//
//  Created by Bilaal Rashid on 27/08/2023.
//

import Foundation
import OSLog
import UIKit

struct BBCNewsAPINetworkController {
    static let baseUri = "https://news-app.api.bbc.co.uk"

    static func isAPIUrl(url: String) -> Bool {
        guard let baseHostname = URL(string: self.baseUri)?.host else { return false }
        guard let hostname = URL(string: url)?.host else { return false }
        return hostname == baseHostname
    }

    let session: URLSession = {
        let configuration = URLSessionConfiguration.default
        configuration.httpAdditionalHeaders = [
            // Pretend to be the BBC News app
            // Example: BBCNews/25339 (iPhone15,2; iOS 16.6) BBCHTTPClient/9.0.0
            // swiftlint:disable:next line_length force_https
            "User-Agent": "BBCNews/25339 (\(UIDevice.current.modelIdentifier); \(UIDevice.current.systemName) \(UIDevice.current.systemVersion)) BBCHTTPClient/9.0.0"
        ]
        return URLSession(configuration: configuration)
    }()

    /// Fetches the data for the BBC News home tab
    /// - Parameter postcode: The first part of the user's UK postcode e.g. W1A
    /// - Returns: The home tab data
    func fetchDiscoveryPage(postcode: String? = nil) async throws -> FDResult {
        let url: String = {
            var url = BBCNewsAPINetworkController.baseUri + "/fd/abl?page=chrysalis_discovery&service=news&type=index&clientName=Chrysalis"
            if let postcode = postcode {
                url += "&clientLoc=" + postcode
            }
            return url
        }()

        return try await self.fetchFDUrl(url: url)
    }

    func fetchTopicPages(for topicIds: [String]) async throws -> [FDResult] {
        var results = [FDResult]()

        for topicId in topicIds {
            results.append(try await self.fetchTopicPage(for: topicId))
        }

        return results
    }

    func fetchTopicPage(for topicId: String) async throws -> FDResult {
        let url = BBCNewsAPINetworkController.baseUri + "/fd/abl?clientName=Chrysalis&clientVersion=pre-5&page=\(topicId)&type=topic"
        return try await self.fetchFDUrl(url: url)
    }

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
