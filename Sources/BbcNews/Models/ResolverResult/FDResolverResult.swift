//
//  FDResolverResult.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 12/05/2024.
//

import Foundation

/// An API response providing a new link to resolve to.
public struct FDResolverResult: Codable, Equatable, Hashable, Sendable {
    /// The data of the new link to resolve to.
    public var data: FDResolverResponse

    /// The content type of the HTTP response.
    public var contentType: String

    /// Creates a new API response that provides a new link for response to resolve to.
    ///
    /// - Parameters:
    ///   - data: The data of the new link to resolve to.
    ///   - contentType: The content type of the HTTP response.
    public init(data: FDResolverResponse, contentType: String) {
        self.data = data
        self.contentType = contentType
    }
}
