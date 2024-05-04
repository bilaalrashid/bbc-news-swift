//
//  FDHeadline.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

public struct FDHeadline: Codable, Equatable, Hashable {
    public let type: String
    public let text: String
    public let lastUpdated: Int?
    public let firstPublished: Int?
    public let lastPublished: Int?
    public let byline: FDHeadlineByline?
    public let topic: FDTopic?
    public let languageCode: String
    public let readTimeMinutes: Int

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
