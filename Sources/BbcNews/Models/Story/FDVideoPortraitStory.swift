//
//  FDVideoPortraitStory.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 22/10/2023.
//

import Foundation

public struct FDVideoPortraitStory: Codable, Equatable, Hashable {
    public let type: String
    public let id: String
    public let url: String
    public let text: String
    public let subtext: String
    public let media: FDMedia

    public init(type: String, id: String, url: String, text: String, subtext: String, media: FDMedia) {
        self.type = type
        self.id = id
        self.url = url
        self.text = text
        self.subtext = subtext
        self.media = media
    }
}
