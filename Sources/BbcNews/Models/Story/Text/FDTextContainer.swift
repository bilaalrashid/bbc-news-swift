//
//  FDTextContainer.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

/// A container for a paragraph of text in a story.
public struct FDTextContainer: Codable, Equatable, Hashable {
    /// Used for decoding `FDItem`. This is always `textContainer`.
    internal let type: String

    /// The type of the container that the text should be displayed in.
    public var containerType: FDTextContainerType

    /// The text to be displayed in the paragraph.
    public var text: FDAttributedText

    /// Creates a new text container for a paragraph in a story.
    ///
    /// - Parameters:
    ///   - containerType: The type of the container that the text should be displayed in.
    ///   - text: The text to be displayed in the paragraph.
    public init(containerType: FDTextContainerType, text: FDAttributedText) {
        self.type = "textContainer"
        self.containerType = containerType
        self.text = text
    }
}
