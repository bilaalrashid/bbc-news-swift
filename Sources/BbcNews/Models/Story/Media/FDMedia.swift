//
//  FDMedia.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

public struct FDMedia: Codable, Equatable, Hashable {
    /// Used for decoding `FDItem`. This is always `Media`.
    internal let type: String
    public var source: FDMediaSource
    public var image: FDImage
    public var metadata: FDMediaMetadata

    public init(source: FDMediaSource, image: FDImage, metadata: FDMediaMetadata) {
        self.type = "Media"
        self.source = source
        self.image = image
        self.metadata = metadata
    }
}
