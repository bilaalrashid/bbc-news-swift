//
//  FDStoryPromo.swift
//  ReadBeeb
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

struct FDStoryPromo: Codable, Equatable, Hashable {
    let type: String
    let style: String
    let languageCode: String
    let text: String?
    let link: FDLink
    let subtext: String?
    let updated: Int?
    let topic: FDTopic?
    let image: FDImage?
    let badges: [FDBadge]?
    let uasToken: String?
}

struct FDBadge: Codable, Equatable, Hashable {
    let type: String
    let brand: String
    let text: String?
    let duration: Int?
}
