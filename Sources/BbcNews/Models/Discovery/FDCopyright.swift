//
//  FDCopyright.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 24/09/2023.
//

import Foundation

/// A description of a copyright claim for a piece of work.
public struct FDCopyright: Codable, Equatable, Hashable, Sendable {
    /// Used for decoding `FDItem`. This is always `Copyright`.
    internal let type: String

    /// The 64-bit timestamp of when the copyrighted work was last updated.
    public var lastUpdated: Date

    /// Creates a new definition of a copyrighted piece of work.
    ///
    /// - Parameter lastUpdated: The time the copyrighted work was last updated.
    public init(lastUpdated: Date) {
        self.type = "Copyright"
        self.lastUpdated = lastUpdated
    }
}
