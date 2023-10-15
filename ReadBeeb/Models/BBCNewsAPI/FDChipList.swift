//
//  FDChipList.swift
//  ReadBeeb
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

struct FDChipList: Codable, Equatable, Hashable {
    let type: String
    let items: [FDTopic]
}
