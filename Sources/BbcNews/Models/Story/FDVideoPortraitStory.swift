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
}
