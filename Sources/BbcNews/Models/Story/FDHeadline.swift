//
//  FDHeadline.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

public struct FDHeadline: Codable, Equatable, Hashable {
    public var type: String
    public var text: String
    public var lastUpdated: Int?
    public var firstPublished: Int?
    public var lastPublished: Int?
    public var byline: FDHeadlineByline?
    public var topic: FDTopic?
    public var languageCode: String
    public var readTimeMinutes: Int

    public var published: Int? {
        return self.lastUpdated ?? self.lastPublished ?? self.firstPublished
    }

    public init(
        type: String,
        text: String,
        lastUpdated: Int? = nil,
        firstPublished: Int? = nil,
        lastPublished: Int? = nil,
        byline: FDHeadlineByline? = nil,
        topic: FDTopic? = nil,
        languageCode: String,
        readTimeMinutes: Int
    ) {
        self.type = type
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
