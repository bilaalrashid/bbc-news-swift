//
//  NetworkError.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 07/12/2023.
//

import Foundation

public enum NetworkError: Error, LocalizedError, CustomStringConvertible {
    case noUrl
    case invalidUrl(url: String)
    case invalidResponse
    case unsuccessfulStatusCode(code: Int)

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
        }
    }

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
        }
    }
}
