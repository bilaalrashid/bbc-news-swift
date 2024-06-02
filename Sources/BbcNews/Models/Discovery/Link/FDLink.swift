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

    /// The events to track.
    public var trackers: [FDTracker]

    /// Creates a new link to a page(s).
    ///
    /// - Parameters:
    ///   - destinations: The destination(s) of the link.
    ///   - trackers: The events to track.
    public init(destinations: [FDLinkDestination], trackers: [FDTracker]) {
        self.destinations = destinations
        self.trackers = trackers
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.destinations)
    }

    // swiftlint:disable:next operator_whitespace
    public static func ==(lhs: FDLink, rhs: FDLink) -> Bool {
        return lhs.destinations == rhs.destinations
    }
}
