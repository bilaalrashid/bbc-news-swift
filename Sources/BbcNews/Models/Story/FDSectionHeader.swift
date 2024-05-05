//
//  FDSectionHeader.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

public struct FDSectionHeader: Codable, Equatable, Hashable {
    /// Used for decoding `FDItem`. This is always `SectionHeader`.
    internal let type: String
    public var text: String

    public init(text: String) {
        self.type = "SectionHeader"
        self.text = text
    }
}
