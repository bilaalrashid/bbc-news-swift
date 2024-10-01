//
//  FDAttributedTextSpan.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 08/12/2023.
//

import Foundation

/// A definition of a modified attribute of text over a defined range.
public struct FDAttributedTextSpan: Codable, Equatable, Hashable, Sendable {
    /// The type of the span.
    public var type: FDAttributeType

    /// The start index of the span.
    public var startIndex: Int

    /// The number of characters that the span applied for.
    public var length: Int

    /// A style attribute for the text in the span.
    public var attribute: FDAttribute?

    /// A link that the attributed text in the span should link to.
    public var link: FDLink?

    /// Creates a new text span with modified attributes.
    ///
    /// - Parameters:
    ///   - type: The type of the span.
    ///   - startIndex: The start index of the span.
    ///   - length: The number of characters that the span applied for.
    ///   - attribute: A style attribute for the text in the span.
    ///   - link: A link that the attributed text in the span should link to.
    public init(type: FDAttributeType, startIndex: Int, length: Int, attribute: FDAttribute? = nil, link: FDLink? = nil) {
        self.type = type
        self.startIndex = startIndex
        self.length = length
        self.attribute = attribute
        self.link = link
    }
}
