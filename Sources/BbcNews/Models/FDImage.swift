//
//  FDImage.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

struct FDImage: Codable, Equatable, Hashable {
    let type: String
    let source: FDImageSource
    let metadata: FDImageMetadata?
}
