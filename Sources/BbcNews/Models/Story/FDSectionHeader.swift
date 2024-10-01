//
//  FDSectionHeader.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

/// A section header in a story.
public struct FDSectionHeader: Codable, Equatable, Hashable, Sendable {
    /// Used for decoding `FDItem`. This is always `SectionHeader`.
    internal let type: String

    /// The text in the section header.
    public var text: String

    /// Creates a new section header in a story.
    ///
    /// - Parameter text: The text in the header.
    public init(text: String) {
        self.type = "SectionHeader"
        self.text = text
    }
}
