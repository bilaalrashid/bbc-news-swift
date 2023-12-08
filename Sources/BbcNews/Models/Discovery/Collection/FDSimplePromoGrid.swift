//
//  FDSimplePromoGrid.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 01/10/2023.
//

import Foundation

struct FDSimplePromoGrid: FDCollection, Codable, Equatable, Hashable {
    let type: String
    let items: [FDStoryPromo]
}
