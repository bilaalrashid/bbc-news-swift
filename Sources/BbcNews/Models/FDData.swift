//
//  FDData.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

public struct FDData: Codable, Equatable, Hashable {
    public var metadata: FDDataMetadata
    public var items: [FDItem]

    public init(metadata: FDDataMetadata, items: [FDItem]) {
        self.metadata = metadata
        self.items = items
    }
}
