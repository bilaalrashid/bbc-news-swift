//
//  FDData.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

public struct FDData: Codable, Equatable, Hashable {
    public let metadata: FDDataMetadata
    public let items: [FDItem]
}
