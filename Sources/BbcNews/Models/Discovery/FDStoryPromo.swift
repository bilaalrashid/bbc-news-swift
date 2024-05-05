//
//  FDStoryPromo.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

public struct FDStoryPromo: Codable, Equatable, Hashable {
    /// Used for decoding `FDItem`. This is always `StoryPromo`.
    internal let type: String
    public var style: String
    public var languageCode: String
    public var text: String?
    public var link: FDLink
    public var subtext: String?
    public var updated: Int?
    public var topic: FDTopic?
    public var image: FDImage?
    public var badges: [FDBadge]?
    public var uasToken: String?

    public init(
        style: String,
        languageCode: String,
        text: String? = nil,
        link: FDLink,
        subtext: String? = nil,
        updated: Int? = nil,
        topic: FDTopic? = nil,
        image: FDImage? = nil,
        badges: [FDBadge]? = nil,
        uasToken: String? = nil
    ) {
        self.type = "StoryPromo"
        self.style = style
        self.languageCode = languageCode
        self.text = text
        self.link = link
        self.subtext = subtext
        self.updated = updated
        self.topic = topic
        self.image = image
        self.badges = badges
        self.uasToken = uasToken
    }
}
