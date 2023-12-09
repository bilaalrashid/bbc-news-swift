//
//  FDImage.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

public struct FDImage: Codable, Equatable, Hashable {
    public let type: String
    public let source: FDImageSource
    public let metadata: FDImageMetadata?

    public init(type: String, source: FDImageSource, metadata: FDImageMetadata? = nil) {
        self.type = type
        self.source = source
        self.metadata = metadata
    }
}
