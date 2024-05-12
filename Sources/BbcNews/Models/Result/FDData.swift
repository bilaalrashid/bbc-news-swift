//
//  FDData.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

public struct FDData: Codable, Equatable, Hashable {
    /// An optional type field returned by the API. The only known value is `ContentResponse`.
    public var type: String?
    public var metadata: FDDataMetadata
    public var items: [FDItem]

    public init(type: String? = nil, metadata: FDDataMetadata, items: [FDItem]) {
        self.type = type
        self.metadata = metadata
        self.items = items
    }
}
