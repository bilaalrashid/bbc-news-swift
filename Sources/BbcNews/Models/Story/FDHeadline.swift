//
//  FDHeadline.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

/// A headline for a story.
public struct FDHeadline: Codable, Equatable, Hashable {
    /// Used for decoding `FDItem`. This is always `Headline`.
    internal let type: String

    /// The text in the headline.
    public var text: String

    /// A legacy property for storing a 64-bit timestamp of the time the story was last updated.
    ///
    /// Deprecated in favour of `firstPublished` and `lastPublished`.
    public var lastUpdated: Date?

    /// A 64-bit timestamp of the time the story was first published.
    public var firstPublished: Date?

    /// A 64-bit timestamp of the time the story was last updated.
    public var lastPublished: Date?

    /// A legacy property for storing article bylines.
    ///
    /// Deprecated in favour of stories using a `FDByline` object as a sibling instead.
    public var byline: FDHeadlineByline?

    /// The main topic that the story relates to.
    public var topic: FDTopic?

    /// The ISO 639-1 language code of the language used in the story.
    public var languageCode: String?

    /// The estimated number of minutes that the article would take to be read.
    public var readTimeMinutes: Int?

    /// A computed property that returns the time the story was last published.
    ///
    /// This is a wrapper around `lastUpdated`, `lastPublished` and `firstPublished`.
    public var published: Date? {
        return self.lastUpdated ?? self.lastPublished ?? self.firstPublished
    }

    /// Creates a new story headline.
    ///
    /// - Parameters:
    ///   - text: The text in the headline.
    ///   - lastUpdated: A legacy property for storing a 64-bit timestamp of the time the story was last updated.
    ///   - firstPublished: A 64-bit timestamp of the time the story was first published.
    ///   - lastPublished: A 64-bit timestamp of the time the story was last updated.
    ///   - byline: A legacy property for storing article bylines.
    ///   - topic: The main topic that the story relates to.
    ///   - languageCode: The ISO 639-1 language code of the language used in the story.
    ///   - readTimeMinutes: The estimated number of minutes that the article would take to be read.
    public init(
        text: String,
        lastUpdated: Date? = nil,
        firstPublished: Date? = nil,
        lastPublished: Date? = nil,
        byline: FDHeadlineByline? = nil,
        topic: FDTopic? = nil,
        languageCode: String? = nil,
        readTimeMinutes: Int? = nil
    ) {
        self.type = "Headline"
        self.text = text
        self.lastUpdated = lastUpdated
        self.firstPublished = firstPublished
        self.lastPublished = lastPublished
        self.byline = byline
        self.topic = topic
        self.languageCode = languageCode
        self.readTimeMinutes = readTimeMinutes
    }
}
