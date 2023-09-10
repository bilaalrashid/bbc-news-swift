//
//  FDTextContainer.swift
//  ReadBeeb
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

struct FDTextContainer: Codable, Equatable, Hashable {
    let type: String
    let containerType: String
    let text: FDTextContainerText
}

struct FDTextContainerText: Codable, Equatable, Hashable {
    let text: String
    let spans: [FDTextContainerSpan]
}

struct FDTextContainerSpan: Codable, Equatable, Hashable {
    let type: String
    let startIndex: Int
    let length: Int
    let link: FDLink
}
