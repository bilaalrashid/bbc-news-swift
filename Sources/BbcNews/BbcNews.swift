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

    /// The value of `clientVersion` in API network requests.
    private static let clientVersion = "pre-7"

    // MARK: - Static methods

    /// Checks if a URL is hosted on the BBC News API.
    ///
    /// - Parameter urlString: The URL to check.
    /// - Returns: If the URL is hosted on the BBC News API.
    public static func isApiUrl(urlString: String) -> Bool {
        guard let url = URL(string: urlString) else { return false }
        return BbcNews.isApiUrl(url: url)
    }

    /// Checks if a URL is hosted on the BBC News API.
    ///
    /// - Parameter url: The URL to check.
    /// - Returns: If the URL is hosted on the BBC News API.
    public static func isApiUrl(url: URL) -> Bool {
        return url.host == self.hostname
    }

    /// Converts a BBC News webpage URL to a native API URL that returns a JSON representation, if one exists.
    ///
    /// - Parameters:
    ///   - urlString: The language that results should be localised for.
    ///   - language: The language that results should be localised for.
    ///   - release: The release track of the API version.
    /// - Returns: The native API URL, if successful.
    public static func convertWebUrlToApi(urlString: String, language: Language = .english, release: ReleaseTrack? = nil) -> String? {
        guard let url = URL(string: urlString) else { return nil }
        let result = BbcNews.convertWebUrlToApi(url: url, language: language, release: release)
        return result?.absoluteString
    }

    /// Converts a BBC News webpage URL to a native API URL that returns a JSON representation, if one exists.
    ///
    /// - Parameters:
    ///   - urlString: The language that results should be localised for.
    ///   - language: The language that results should be localised for.
    ///   - release: The release track of the API version.
    /// - Returns: The native API URL, if successful.
    public static func convertWebUrlToApi(url: URL, language: Language = .english, release: ReleaseTrack? = nil) -> URL? {
        let regex = #/https?:\/\/(www\.)?bbc\.co(m|\.uk)\/news\/(\w|\-|\/)+(\.app)?$/#

        // swiftlint:disable:next unused_optional_binding
        guard let _ = try? regex.firstMatch(in: url.absoluteString) else {
            return nil
        }

        var components = URLComponents()
        components.scheme = "https"
        components.host = "news-app.api.bbc.co.uk"
        components.path = "/fd/app-article-api"
        components.queryItems = [
            URLQueryItem(name: "clientName", value: language.clientName),
            URLQueryItem(name: "clientVersion", value: self.clientVersion),
            URLQueryItem(name: "page", value: url.absoluteString)
        ]

        if let release = release {
            components.queryItems?.append(URLQueryItem(name: "release", value: release.rawValue))
        }

        return components.url
    }

    // MARK: - Instance properties

    /// The session to perform network requests from.
    private let session: URLSession

    /// The language that API results should be localised for.
    private let language: Language

    /// The release track of the API version.
    private let releaseTrack: ReleaseTrack?

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
    ///   - language: The language that results should be localised for.
    ///   - release: The release track of the API version.
    public init(language: Language = .english, release: ReleaseTrack? = nil) {
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
    ///   - language: The language that results should be localised for.
    ///   - release: The release track of the API version.
    public init(
        modelIdentifier: String,
        systemName: String,
        systemVersion: String,
        language: Language = .english,
        release: ReleaseTrack? = nil
    ) {
        let configuration = URLSessionConfiguration.default
        configuration.httpAdditionalHeaders = [
            // Pretend to be the BBC News app
            // Example: BBCNews/25339 (iPhone15,2; iOS 16.6) BBCHTTPClient/9.0.0
            "User-Agent": "BBCNews/25625 (\(modelIdentifier); \(systemName) \(systemVersion)) BBCHTTPClient/10.0.0"
        ]

        self.session = URLSession(configuration: configuration)
        self.language = language
        self.releaseTrack = nil
    }

    /// Fetches the main discovery page of the BBC News app i.e. the page shown in the Home tab.
    ///
    /// - Parameter postcode: The first part of the user's UK postcode e.g. W1A.
    /// - Returns: The index discovery page.
    public func fetchIndexDiscoveryPage(postcode: String? = nil) async throws -> FDResult {
        var components = URLComponents()
        components.scheme = "https"
        components.host = BbcNews.hostname
        components.path = "/fd/abl"
        components.queryItems = [
            URLQueryItem(name: "clientName", value: self.language.clientName),
            URLQueryItem(name: "clientVersion", value: BbcNews.clientVersion),
            URLQueryItem(name: "page", value: "chrysalis_discovery"),
            URLQueryItem(name: "service", value: self.language.service),
            URLQueryItem(name: "type", value: "index")
        ]

        if let postcode = postcode {
            components.queryItems?.append(URLQueryItem(name: "clientLoc", value: postcode))
        }

        if let release = self.releaseTrack {
            components.queryItems?.append(URLQueryItem(name: "release", value: release.rawValue))
        }

        if let url = components.url {
            return try await self.fetch(url: url)
        }

        throw NetworkError.noUrl
    }

    /// Fetches the pages for multiple topics.
    ///
    /// - Parameter topicIds: The topic IDs to fetch.
    /// - Returns: The fetched topic pages.
    public func fetchTopicDiscoveryPages(for topicIds: [String]) async throws -> [FDResult] {
        var results = [FDResult]()

        for topicId in topicIds {
            let result = try await self.fetchTopicDiscoveryPage(for: topicId)
            results.append(result)
        }

        return results
    }

    /// Fetches the page for a specified topic.
    ///
    /// - Parameter topicId: The topic ID to fetch.
    /// - Returns: The fetched topic page.
    public func fetchTopicDiscoveryPage(for topicId: String) async throws -> FDResult {
        var components = URLComponents()
        components.scheme = "https"
        components.host = BbcNews.hostname
        components.path = "/fd/abl"
        components.queryItems = [
            URLQueryItem(name: "clientName", value: self.language.clientName),
            URLQueryItem(name: "clientVersion", value: BbcNews.clientVersion),
            URLQueryItem(name: "page", value: topicId),
            URLQueryItem(name: "type", value: "topic")
        ]

        if let release = self.releaseTrack {
            components.queryItems?.append(URLQueryItem(name: "release", value: release.rawValue))
        }

        if let url = components.url {
            return try await self.fetch(url: url)
        }

        throw NetworkError.noUrl
    }

    /// Fetches a page from the BBC News API.
    ///
    /// - Parameter urlString: The absolute URL to fetch.
    /// - Returns: The fetched page.
    public func fetch(urlString: String) async throws -> FDResult {
        guard let url = URL(string: urlString) else {
            throw NetworkError.invalidUrl(url: urlString)
        }

        return try await self.fetch(url: url)
    }

    /// Fetches a page from the BBC News API.
    ///
    /// - Parameter url: The URL to fetch.
    /// - Returns: The fetched page.
    public func fetch(url: URL) async throws -> FDResult {
        #if canImport(OSLog)
        Logger.network.debug("Requesting: \(url, privacy: .public)")
        #endif

        let (data, response) = try await self.session.data(from: url)

        guard let httpResponse = response as? HTTPURLResponse else {
            throw NetworkError.invalidResponse
        }

        let success = 200..<300
        guard success.contains(httpResponse.statusCode) else {
            throw NetworkError.unsuccessfulStatusCode(code: httpResponse.statusCode)
        }

        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .millisecondsSince1970

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
