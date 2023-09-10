//
//  FDHierarchicalCollection.swift
//  ReadBeeb
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

struct FDHierarchicalCollection: Codable, Equatable, Hashable {
    let type: String
    let items: [FDStoryPromo]
}
