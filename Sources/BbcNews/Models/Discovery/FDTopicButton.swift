//
//  FDTopicButton.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 07/05/2024.
//

import Foundation

/// A button representing a topic.
public struct FDTopicButton: Codable, Equatable, Hashable {
    /// Used for decoding `FDItem`. This is always `TopicButton`.
    internal let type: String

    /// The topic represented by the button.
    public var topic: FDTopic

    /// The internal uniform resource name of the topic represented by the button.
    public var resourceId: String

    /// A list of events with an action that should be tracked.
    public var trackedEvents: [FDTrackedEvent]

    /// Creates a new button representing a topic.
    ///
    /// - Parameters:
    ///   - topic: The topic represented by the button.
    ///   - resourceId: The internal uniform resource name of the topic represented by the button.
    public init(topic: FDTopic, resourceId: String, trackedEvents: [FDTrackedEvent]) {
        self.type = "TopicButton"
        self.topic = topic
        self.resourceId = resourceId
        self.trackedEvents = trackedEvents
    }
}
