//
//  FDImageMetadata.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 07/12/2023.
//

import Foundation

struct FDImageMetadata: Codable, Equatable, Hashable {
    let altText: String?
    let caption: String?
    let copyrightText: String?
}
