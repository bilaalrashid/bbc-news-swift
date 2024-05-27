//
//  FDTracker.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 27/05/2024.
//

import Foundation

/// A analytics event that should be tracked.
public struct FDTracker: Codable, Equatable, Hashable {
    /// The type of the event to track.
    public var type: String

    /// The payload of the event to track.
    public var payload: FDTrackerPayload

    /// Creates a new analytics event that should be tracked.
    ///
    /// - Parameters:
    ///   - type: The type of the event to track.
    ///   - payload: The payload of the event to track.
    public init(type: String, payload: FDTrackerPayload) {
        self.type = type
        self.payload = payload
    }
}
