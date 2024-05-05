//
//  FDCopyright.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 24/09/2023.
//

import Foundation

public struct FDCopyright: Codable, Equatable, Hashable {
    public var type: String
    public var lastUpdated: Int

    public init(type: String, lastUpdated: Int) {
        self.type = type
        self.lastUpdated = lastUpdated
    }
}
