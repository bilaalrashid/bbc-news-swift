//
//  FDImageSizingMethod.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 07/12/2023.
//

import Foundation

/// A definition of how to fetch the correct size of the image.
public struct FDImageSizingMethod: Codable, Equatable, Hashable {
    /// The type of sizing method used.
    public var type: String

    /// The token in the URL where the chosen width should be defined.
    public var widthToken: String

    /// The fixed options of widths that can we used to substitute in place of the width token.
    public var widths: [Int]
    
    /// Creates a new definition of how to fetch the correct size of the image.
    /// - Parameters:
    ///   - type: The type of sizing method used.
    ///   - widthToken: The token in the URL where the chosen width should be defined.
    ///   - widths: The fixed options of widths that can we used to substitute in place of the width token.
    public init(type: String, widthToken: String, widths: [Int]) {
        self.type = type
        self.widthToken = widthToken
        self.widths = widths
    }
}
