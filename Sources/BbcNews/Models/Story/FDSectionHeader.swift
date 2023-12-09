//
//  FDSectionHeader.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

public struct FDSectionHeader: Codable, Equatable, Hashable {
    public let type: String
    public let text: String

    public init(type: String, text: String) {
        self.type = type
        self.text = text
    }
}
