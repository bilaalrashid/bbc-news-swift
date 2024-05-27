//
//  FDLink.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

/// A link to a new page(s).
public struct FDLink: Codable, Equatable, Hashable {
    /// The destination(s) of the link.
    public var destinations: [FDLinkDestination]

    /// Creates a new link to a page(s).
    ///
    /// - Parameter destinations: The destination(s) of the link.
    public init(destinations: [FDLinkDestination]) {
        self.destinations = destinations
    }
}
