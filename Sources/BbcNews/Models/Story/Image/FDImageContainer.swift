//
//  FDImageContainer.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 07/05/2024.
//

import Foundation

/// A container for a single image.
public struct FDImageContainer: Codable, Equatable, Hashable {
    /// Used for decoding `FDItem`. This is always `ImageContainer`.
    internal let type: String

    /// The image to display in the container.
    public var image: FDImage

    /// Creates a new image container.
    ///
    /// - Parameter image: The image to display in the container.
    public init(image: FDImage) {
        self.type = "ImageContainer"
        self.image = image
    }
}
