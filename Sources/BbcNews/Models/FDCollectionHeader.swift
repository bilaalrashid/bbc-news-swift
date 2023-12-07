//
//  FDCollectionHeader.swift
//  ReadBeeb
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

struct FDCollectionHeader: Codable, Equatable, Hashable {
    let type: String
    let text: String
    let link: FDLink?
}
