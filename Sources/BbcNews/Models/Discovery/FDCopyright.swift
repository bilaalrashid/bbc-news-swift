//
//  FDCopyright.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 24/09/2023.
//

import Foundation

public struct FDCopyright: Codable, Equatable, Hashable {
    public let type: String
    public let lastUpdated: Int

    public init(type: String, lastUpdated: Int) {
        self.type = type
        self.lastUpdated = lastUpdated
    }
}
