//
//  FDTrackedEvent.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 07/05/2024.
//

import Foundation

/// An event with an action that should be tracked.
public struct FDTrackedEvent: Codable, Equatable, Hashable {
    /// The name of the event being tracked.
    public var event: String

    /// The events to track.
    public var trackers: [FDTracker]

    /// Creates a new event to track.
    ///
    /// - Parameters:
    ///   - event: The name of the event being tracked.
    ///   - trackers: The events to track.
    public init(event: String, trackers: [FDTracker]) {
        self.event = event
        self.trackers = trackers
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.event)
    }

    // swiftlint:disable:next operator_whitespace
    public static func ==(lhs: FDTrackedEvent, rhs: FDTrackedEvent) -> Bool {
        return lhs.event == rhs.event
    }
}
