//
//  FDMedia.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

public struct FDMedia: Codable, Equatable, Hashable {
    public let type: String
    public let source: FDMediaSource
    public let image: FDImage
    public let metadata: FDMediaMetadata
}
