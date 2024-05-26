//
//  FDHeadlineByline.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 07/12/2023.
//

import Foundation

/// A legacy method for storing story bylines.
///
/// Modern articles use a `FDByline` object instead.
public struct FDHeadlineByline: Codable, Equatable, Hashable {
    /// The name of the individual featured in the byline.
    public var name: String

    /// The description or job title of the individual featured in the byline.
    public var purpose: String
    
    /// Creates a new byline for a story.
    ///
    /// - Parameters:
    ///   - name: The name of the individual featured in the byline.
    ///   - purpose: The description or job title of the individual featured in the byline.
    public init(name: String, purpose: String) {
        self.name = name
        self.purpose = purpose
    }
}
