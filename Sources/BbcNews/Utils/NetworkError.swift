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
    case invalidResponse

    /// A non-success HTTP response code was received by the caller.
    ///
    /// This is any response code outside of the 2xx range.
    case unsuccessfulStatusCode(code: Int)

    /// The server returned a new destination to resolve the requested response from.
    case newDestination(link: FDLink)

    /// A human-readable description describing the error.
    public var description: String {
        switch self {
        case .noUrl:
            return "There was no URL to request"
        case .invalidUrl(let url):
            return "\(url) is not a valid URL"
        case .invalidResponse:
            return "The response to the HTTP request was invalid"
        case .unsuccessfulStatusCode(let code):
            return "The HTTP response gave an unsuccessful response code (\(code))"
        case .newDestination(let link):
            return "The response provides a new destination to resolve to (\(link))"
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
