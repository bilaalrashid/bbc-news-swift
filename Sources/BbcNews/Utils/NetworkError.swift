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

    /// A response was returned that was unable to be decoded into a type.
    case undecodableResponse(url: URL, type: Decodable.Type, underlyingError: DecodingError)

    /// A generic error encountered when performing a networking operation.
    case generic(underlyingError: Error)

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
        case .undecodableResponse(let url, let type, let underlyingError):
            // Manually rewrite the error description to be more useful when unwrapped
            var description = ""

            switch underlyingError {
            case .dataCorrupted(let context):
                description = "Data corrupted when decoding: \(context)"
            case .keyNotFound(let key, let context):
                description = "Key \(key) not found for coding path '\(context.codingPath)': \(context.debugDescription)"
            case .valueNotFound(let value, let context):
                description = "Value \(value) not found for coding path '\(context.codingPath)': \(context.debugDescription)"
            case .typeMismatch(let type, let context):
                description = "Type \(type) mismatch for coding path '\(context.codingPath)': \(context.debugDescription)"
            @unknown default:
                description = "Decoding error: \(underlyingError.localizedDescription)"
            }

            return "\(url) returned a response that was not decodable to \(type): \(description)"
        case .generic(let underlyingError):
            return underlyingError.localizedDescription.description
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
        case .undecodableResponse:
            return NSLocalizedString(self.description, comment: "Unable to decode response")
        case .generic(let underlyingError):
            return underlyingError.localizedDescription
        }
    }
}
