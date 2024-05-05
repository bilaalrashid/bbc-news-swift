//
//  FDImage.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

public struct FDImage: Codable, Equatable, Hashable {
    /// Used for decoding `FDItem`. This is always `Image`.
    internal let type: String
    public var source: FDImageSource
    public var metadata: FDImageMetadata?

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
        if self.source.sizingMethod.type == "SPECIFIC_WIDTHS" {
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
