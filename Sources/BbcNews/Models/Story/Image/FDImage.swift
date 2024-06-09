//
//  FDImage.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

/// An image to be displayed.
public struct FDImage: Codable, Equatable, Hashable {
    /// Used for decoding `FDItem`. This is always `Image`.
    internal let type: String

    /// The remote source of the image.
    public var source: FDImageSource

    /// The metadata of the image.
    public var metadata: FDImageMetadata?

    /// Creates a new image.
    ///
    /// - Parameters:
    ///   - source: The remote source of the image.
    ///   - metadata: The metadata of the image.
    public init(source: FDImageSource, metadata: FDImageMetadata? = nil) {
        self.type = "Image"
        self.source = source
        self.metadata = metadata
    }

    /// Returns the URL that provides the image in the largest possible width, or `nil` if no image URLs can be found.
    public var largestImageUrl: URL? {
        return self.largestImageUrl(upTo: .infinity)
    }

    /// Returns a URL that provides the image in the largest possible width within the specified maximum.
    ///
    /// - Parameter maxWidth: The maximum width which the URL should return an image for.
    /// - Returns: A URL that returns a version of the image, or `nil` if no image URLs can be found.
    public func largestImageUrl(upTo maxWidth: Double) -> URL? {
        if self.source.sizingMethod.type == .specificWidths {
            guard let widths = self.source.sizingMethod.widths else {
                return nil
            }

            let allowedWidths = widths.filter { Double($0) <= maxWidth }

            guard let maxSize = allowedWidths.last, let widthToken = self.source.sizingMethod.widthToken else {
                return nil
            }

            let url = self.source.url.replacingOccurrences(of: widthToken, with: String(maxSize))
            return URL(string: url)
        }

        // Non-templated URLs.
        return URL(string: self.source.url)
    }
}
