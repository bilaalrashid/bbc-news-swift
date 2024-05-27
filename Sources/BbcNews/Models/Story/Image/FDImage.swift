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
    public var largestImageUrl: String? {
        return self.largestImageUrl(upTo: .infinity)
    }

    /// Returns a URL that provides the image in the largest possible width within the specified maximum.
    ///
    /// - Parameter maxWidth: The maximum width which the URL should return an image for.
    /// - Returns: A URL that returns a version of the image, or `nil` if no image URLs can be found.
    public func largestImageUrl(upTo maxWidth: Double) -> String? {
        if self.source.sizingMethod.type == .specificWidths {
            let allowedWidths = self.source.sizingMethod.widths.filter { Double($0) <= maxWidth }

            if let maxSize = allowedWidths.last {
                return self.source.url.replacingOccurrences(of: self.source.sizingMethod.widthToken, with: String(maxSize))
            }

            return nil
        }

        // If we don't recognise the sizing method, assume the URL is not templated.
        return self.source.url
    }
}
