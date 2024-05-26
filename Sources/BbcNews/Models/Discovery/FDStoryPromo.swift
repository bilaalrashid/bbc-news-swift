//
//  FDStoryPromo.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

/// A promo description that links to a story.
public struct FDStoryPromo: Codable, Equatable, Hashable {
    /// Used for decoding `FDItem`. This is always `StoryPromo`.
    internal let type: String

    /// The style in which the promo should be displayed.
    public var style: String

    /// The ISO 639-1 language code of the language used in the story.
    public var languageCode: String

    /// The title of the story.
    public var text: String?

    /// The subtitle of the story.
    public var subtext: String?

    /// The destination link that the story links to.
    public var link: FDLink

    /// The 64-bit timestamp of the time the story was last updated.
    public var updated: Int?

    /// The main topic that the story relates to.
    public var topic: FDTopic?

    /// The image to be displayed with the story promo.
    public var image: FDImage?

    /// A list of badges that relate to the story.
    public var badges: [FDBadge]?

    /// The internal uniform resource name of the story.
    public var uasToken: String?
    
    /// Creates a promo description that links to a story.
    ///
    /// - Parameters:
    ///   - style: The style in which the promo should be displayed.
    ///   - languageCode: The ISO 639-1 language code of the language used in the story.
    ///   - text: The title of the story.
    ///   - subtext: The subtitle of the story.
    ///   - link: The destination link that the story links to.
    ///   - updated: The 64-bit timestamp of the time the story was last updated.
    ///   - topic: The main topic that the story relates to.
    ///   - image: The image to be displayed with the story promo.
    ///   - badges: A list of badges that relate to the story.
    ///   - uasToken: The internal uniform resource name of the story.
    public init(
        style: String,
        languageCode: String,
        text: String? = nil,
        subtext: String? = nil,
        link: FDLink,
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
        self.subtext = subtext
        self.link = link
        self.updated = updated
        self.topic = topic
        self.image = image
        self.badges = badges
        self.uasToken = uasToken
    }
}
