//
//  FDTextContainer.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

public struct FDTextContainer: Codable, Equatable, Hashable {
    /// Used for decoding `FDItem`. This is always `textContainer`.
    internal let type: String
    public var containerType: String
    public var text: FDTextContainerText

    public init(containerType: String, text: FDTextContainerText) {
        self.type = "textContainer"
        self.containerType = containerType
        self.text = text
    }
}
