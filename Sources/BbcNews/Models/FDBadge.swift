//
//  FDBadge.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 07/12/2023.
//

import Foundation

struct FDBadge: Codable, Equatable, Hashable {
    let type: String
    let brand: String
    let text: String?
    let duration: Int?
}
