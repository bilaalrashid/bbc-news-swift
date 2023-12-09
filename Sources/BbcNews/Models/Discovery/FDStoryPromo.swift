//
//  FDStoryPromo.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

public struct FDStoryPromo: Codable, Equatable, Hashable {
    public let type: String
    public let style: String
    public let languageCode: String
    public let text: String?
    public let link: FDLink
    public let subtext: String?
    public let updated: Int?
    public let topic: FDTopic?
    public let image: FDImage?
    public let badges: [FDBadge]?
    public let uasToken: String?

    public init(
        type: String,
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
        self.type = type
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
