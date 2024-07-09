//
//  NetworkError.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 07/12/2023.
//

import Foundation

/// An error occurred during a networking operation.
public enum NetworkError: Error, LocalizedError, CustomStringConvertible {
    /// No URL was provided to the caller.
    case noUrl

    /// An invalid URL was provided to the caller.
    case invalidUrl(url: String)

    /// A corrupt response was returned by the server.
    case invalidResponse(url: URL)

    /// A non-success HTTP response code was received by the caller.
    ///
    /// This is any response code outside of the 2xx range.
    case unsuccessfulStatusCode(url: URL, code: Int)

    /// The server returned a new destination to resolve the requested response from.
    case newDestination(url: URL, link: FDLink)

    /// A human-readable description describing the error.
    public var description: String {
        switch self {
        case .noUrl:
            return "There was no URL to request"
        case .invalidUrl(let url):
            return "\(url) is not a valid URL"
        case .invalidResponse(let url):
            return "The response of the HTTP request to \(url) was invalid"
        case .unsuccessfulStatusCode(let url, let code):
            return "\(url) returned an unsuccessful HTTP response code (\(code))"
        case .newDestination(let url, let link):
            return "\(url) provides a new destination to resolve (\(link))"
        }
    }

    /// A localized message describing what error occurred.
    public var errorDescription: String? {
        switch self {
        case .noUrl:
            return NSLocalizedString(self.description, comment: "No URL")
        case .invalidUrl:
            return NSLocalizedString(self.description, comment: "Invalid URL")
        case .invalidResponse:
            return NSLocalizedString(self.description, comment: "Invalid HTTP response")
        case .unsuccessfulStatusCode:
            return NSLocalizedString(self.description, comment: "Unsuccessful HTTP request")
        case .newDestination:
            return NSLocalizedString(self.description, comment: "New destination provided")
        }
    }
}
