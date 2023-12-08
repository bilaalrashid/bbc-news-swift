//
//  FDVideoPortraitStory.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 22/10/2023.
//

import Foundation

struct FDVideoPortraitStory: Codable, Equatable, Hashable {
    let type: String
    let id: String
    let url: String
    let text: String
    let subtext: String
    let media: FDMedia
}
