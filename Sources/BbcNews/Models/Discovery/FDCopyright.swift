//
//  FDCopyright.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 24/09/2023.
//

import Foundation

public struct FDCopyright: Codable, Equatable, Hashable {
    /// Used for decoding `FDItem`. This is always `Copyright`.
    internal let type: String
    public var lastUpdated: Int

    public init(lastUpdated: Int) {
        self.type = "Copyright"
        self.lastUpdated = lastUpdated
    }
}
