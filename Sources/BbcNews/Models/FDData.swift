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
