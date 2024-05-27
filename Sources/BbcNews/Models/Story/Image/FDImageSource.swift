//
//  FDImageSource.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 07/12/2023.
//

import Foundation

/// The remote source for an image.
public struct FDImageSource: Codable, Equatable, Hashable {
    /// The URL that the image is located.
    public var url: String

    /// The definition of how to fetch the correct size of the image.
    public var sizingMethod: FDImageSizingMethod

    /// The aspect ratio of the image.
    public var aspectRatio: Double?

    /// Creates a new remote source for an image.
    ///
    /// - Parameters:
    ///   - url: The URL that the image is located.
    ///   - sizingMethod: The definition of how to fetch the correct size of the image.
    ///   - aspectRatio: The aspect ratio of the image.
    public init(url: String, sizingMethod: FDImageSizingMethod, aspectRatio: Double? = nil) {
        self.url = url
        self.sizingMethod = sizingMethod
        self.aspectRatio = aspectRatio
    }
}
