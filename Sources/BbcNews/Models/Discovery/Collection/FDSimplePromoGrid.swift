//
//  FDSimplePromoGrid.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 01/10/2023.
//

import Foundation

public struct FDSimplePromoGrid: FDCollection, Codable, Equatable, Hashable {
    public let type: String
    public let items: [FDStoryPromo]
}
