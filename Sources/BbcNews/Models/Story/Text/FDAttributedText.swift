//
//  FDAttributedText.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 08/12/2023.
//

import Foundation

/// Annotated contents of a text paragraph.
public struct FDAttributedText: Codable, Equatable, Hashable {
    /// The raw text to display.
    public var text: String

    /// A list of spans used to annotate the text inside the container.
    public var spans: [FDAttributedTextSpan]
    
    /// Creates a new text paragraph with annotated attributed.
    ///
    /// - Parameters:
    ///   - text: The raw text to display.
    ///   - spans: A list of spans used to annotate the text inside the container.
    public init(text: String, spans: [FDAttributedTextSpan]) {
        self.text = text
        self.spans = spans
    }
}
