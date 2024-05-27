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
}
