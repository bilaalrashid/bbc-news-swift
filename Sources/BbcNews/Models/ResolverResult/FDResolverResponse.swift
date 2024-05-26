//
//  FDResolverResponse.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 12/05/2024.
//

import Foundation

/// The details of a new link for an API request to resolve to.
public struct FDResolverResponse: Codable, Equatable, Hashable {
    /// Used for decoding `FDResolverResult`. This is always `ResolverResponse`.
    internal let type: String?

    /// The link which the response should resolve to.
    public var resolvedLink: FDLink

    /// Creates the details of a new link for an API request to resolve to.
    ///
    /// - Parameter resolvedLink: The link which the response should resolve to.
    public init(resolvedLink: FDLink) {
        self.type = "ResolverResponse"
        self.resolvedLink = resolvedLink
    }
}
