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

    /// Creates a new event to track.
    ///
    /// - Parameter event: The name of the event being tracked.
    public init(event: String) {
        self.event = event
    }
}
