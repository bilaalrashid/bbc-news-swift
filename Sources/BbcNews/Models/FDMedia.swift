//
//  FDMedia.swift
//  ReadBeeb
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

struct FDMedia: Codable, Equatable, Hashable {
    let type: String
    let source: FDMediaSource
    let image: FDImage
    let metadata: FDMediaMetadata
}
