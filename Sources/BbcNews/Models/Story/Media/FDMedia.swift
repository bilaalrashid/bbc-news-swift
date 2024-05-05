//
//  FDMedia.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

public struct FDMedia: Codable, Equatable, Hashable {
    public var type: String
    public var source: FDMediaSource
    public var image: FDImage
    public var metadata: FDMediaMetadata

    public init(type: String, source: FDMediaSource, image: FDImage, metadata: FDMediaMetadata) {
        self.type = type
        self.source = source
        self.image = image
        self.metadata = metadata
    }
}
