//
//  BbcNews.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 27/08/2023.
//

import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif
#if canImport(OSLog)
import OSLog
#endif
#if canImport(UIKit)
import UIKit
#endif

/// A network controller for the BBC News private API, as used by the iOS app.
///
/// This attempts to mimic the User-Agent of the iOS app.
public struct BbcNews {
    // MARK: - Static properties

    /// The hostname at which the API is hosted at.
    public static let hostname = "news-app.api.bbc.co.uk"

    /// The value of `clientName` in API network requests.
    private static let clientName = "Chrysalis"

    /// The value of `clientVersion` in API network requests.
    private static let clientVersion = "pre-7"

    // MARK: - Static methods

    /// Checks if a URL is hosted on the BBC News API.
    ///
    /// - Parameter url: The URL to check.
    /// - Returns: If the URL is hosted on the BBC News API.
    public static func isApiUrl(url: String) -> Bool {
        guard let hostname = URL(string: url)?.host else { return false }
        return hostname == self.hostname
    }

    /// Converts a web URL that returns HTML to a native API URL that returns a JSON representation.
    ///
    /// - Parameter url: The web URL to convert.
    /// - Returns: The native API URL, if successful.
    public static func convertWebUrlToApi(url: String) -> String? {
        let regex = #/https?:\/\/(www\.)?bbc\.co(m|\.uk)\/news\/(\w|\-|\/)+\.app$/#

        // swiftlint:disable:next unused_optional_binding
        guard let _ = try? regex.firstMatch(in: url) else {
            return nil
        }

        var components = URLComponents()
        components.scheme = "https"
        components.host = "news-app.api.bbc.co.uk"
        components.path = "/fd/app-article-api"
        components.queryItems = [
            URLQueryItem(name: "clientName", value: self.clientName),
            URLQueryItem(name: "clientVersion", value: self.clientVersion),
            URLQueryItem(name: "page", value: url)
        ]

        return components.url?.absoluteString
    }

    // MARK: - Instance properties

    /// The session to perform network requests from.
    private let session: URLSession

    // MARK: - Instance methods

#if canImport(UIKit)
    /// Creates an instance of `BbcNews` for making network requests to the BBC News API.
    ///
    /// This initialises the User-Agent string, based upon the operating system and device that the request is performed from. Defaulting
    /// to fetching from `UIDevice`, if available on the platform.
    ///
    /// - Parameters:
    ///   - modelIdentifier: The model identifier of the device e.g. iPhone15,2,
    ///   - systemName: The name of the operating system e.g. iOS.
    ///   - systemVersion: The version of the operating system e.g. 16.6.
    public init() {
        self.init(
            modelIdentifier: UIDevice.current.modelIdentifier,
            systemName: UIDevice.current.systemName,
            systemVersion: UIDevice.current.systemVersion
        )
    }
#endif

    /// Creates an instance of `BbcNews` for making network requests to the BBC News API.
    ///
    /// This initialises the User-Agent string, based upon the operating system and device that the request is performed from.
    ///
    /// - Parameters:
    ///   - modelIdentifier: The model identifier of the device e.g. iPhone15,2,
    ///   - systemName: The name of the operating system e.g. iOS.
    ///   - systemVersion: The version of the operating system e.g. 16.6.
    public init(modelIdentifier: String, systemName: String, systemVersion: String) {
        let configuration = URLSessionConfiguration.default
        configuration.httpAdditionalHeaders = [
            // Pretend to be the BBC News app
            // Example: BBCNews/25339 (iPhone15,2; iOS 16.6) BBCHTTPClient/9.0.0
            "User-Agent": "BBCNews/25625 (\(modelIdentifier); \(systemName) \(systemVersion)) BBCHTTPClient/10.0.0"
        ]
        self.session = URLSession(configuration: configuration)
    }

    /// Fetches the main discovery page of the BBC News app i.e. the page shown in the Home tab
    ///
    /// - Parameter postcode: The first part of the user's UK postcode e.g. W1A.
    /// - Returns: The index discovery page.
    public func fetchIndexDiscoveryPage(postcode: String? = nil) async throws -> FDResult {
        var components = URLComponents()
        components.scheme = "https"
        components.host = BbcNews.hostname
        components.path = "/fd/abl"
        components.queryItems = [
            URLQueryItem(name: "clientName", value: BbcNews.clientName),
            URLQueryItem(name: "clientVersion", value: BbcNews.clientVersion),
            URLQueryItem(name: "page", value: "chrysalis_discovery"),
            URLQueryItem(name: "service", value: "news"),
            URLQueryItem(name: "type", value: "index")
        ]

        if let url = components.url?.absoluteString {
            return try await self.fetchFDUrl(url: url)
        }

        throw NetworkError.noUrl
    }

    /// Fetches the pages for multiple topics.
    ///
    /// - Parameter topicIds: The topic IDs to fetch.
    /// - Returns: The fetched topic pages.
    public func fetchTopicPages(for topicIds: [String]) async throws -> [FDResult] {
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
    public func fetchTopicPage(for topicId: String) async throws -> FDResult {
        var components = URLComponents()
        components.scheme = "https"
        components.host = BbcNews.hostname
        components.path = "/fd/abl"
        components.queryItems = [
            URLQueryItem(name: "clientName", value: BbcNews.clientName),
            URLQueryItem(name: "clientVersion", value: BbcNews.clientVersion),
            URLQueryItem(name: "page", value: topicId),
            URLQueryItem(name: "type", value: "topic")
        ]

        if let url = components.url?.absoluteString {
            return try await self.fetchFDUrl(url: url)
        }

        throw NetworkError.noUrl
    }

    /// Fetches a page from the BBC News API.
    ///
    /// - Parameter urlString: The absolute URL to fetch.
    /// - Returns: The fetched page.
    public func fetchFDUrl(url urlString: String) async throws -> FDResult {
        // swiftlint:disable indentation_width
#if canImport(OSLog)
        Logger.network.debug("Requesting: \(urlString, privacy: .public)")
#endif
        // swiftlint:enable indentation_width

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

        // First check if the URL resolves to a new destination, otherwise attempt to decode as a normal response.
        do {
            let newDestination = try decoder.decode(FDResolverResult.self, from: data)
            throw NetworkError.newDestination(link: newDestination.data.resolvedLink)
        } catch let error as NetworkError {
            throw error
        } catch {
            return try decoder.decode(FDResult.self, from: data)
        }
    }
}
