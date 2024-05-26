//
//  FDBadge.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 07/12/2023.
//

import Foundation

/// A visual badge to tag a story with.
public struct FDBadge: Codable, Equatable, Hashable {
    /// The type of the badge.
    public var type: String

    /// The brand the badge represents.
    public var brand: String

    /// The text displayed within the badge.
    public var text: String?

    /// The time duration of the media described, represented in milliseconds.
    public var duration: Int?
    
    /// Creates a new visual badge that tags a story.
    ///
    /// - Parameters:
    ///   - type: The type of the badge.
    ///   - brand: The brand the badge represents.
    ///   - text: The text displayed within the badge.
    ///   - duration: The duration of the media described, represented in milliseconds.
    public init(type: String, brand: String, text: String? = nil, duration: Int? = nil) {
        self.type = type
        self.brand = brand
        self.text = text
        self.duration = duration
    }
}
