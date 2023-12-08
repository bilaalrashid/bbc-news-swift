//
//  FDImageSizingMethod.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 07/12/2023.
//

import Foundation

struct FDImageSizingMethod: Codable, Equatable, Hashable {
    let type: String
    let widthToken: String
    let widths: [Int]
}
