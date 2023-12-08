//
//  FDTextContainerSpan.swift
//
//
//  Created by Bilaal Rashid on 08/12/2023.
//

import Foundation

struct FDTextContainerSpan: Codable, Equatable, Hashable {
    let type: String
    let startIndex: Int
    let length: Int
    let attribute: String?
    let link: FDLink?
}
