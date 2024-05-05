//
//  FDVideoPortraitStory.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 22/10/2023.
//

import Foundation

public struct FDVideoPortraitStory: Codable, Equatable, Hashable {
    public var type: String
    public var id: String
    public var url: String
    public var text: String
    public var subtext: String
    public var media: FDMedia

    public init(type: String, id: String, url: String, text: String, subtext: String, media: FDMedia) {
        self.type = type
        self.id = id
        self.url = url
        self.text = text
        self.subtext = subtext
        self.media = media
    }
}
