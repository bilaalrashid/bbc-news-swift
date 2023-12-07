//
//  FDData.swift
//  ReadBeeb
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

struct FDData: Codable, Equatable, Hashable {
    let metadata: FDDataMetadata
    let items: [FDItem]
}

struct FDDataMetadata: Codable, Equatable, Hashable {
    let name: String
    let allowAdvertising: Bool
    let lastUpdated: Int
    let shareUrl: String?
}
