//
//  FDHeadline.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

struct FDHeadline: Codable, Equatable, Hashable {
    let type: String
    let text: String
    let lastUpdated: Int
    let byline: FDHeadlineByline?
    let topic: FDTopic?
    let languageCode: String
    let readTimeMinutes: Int
}
