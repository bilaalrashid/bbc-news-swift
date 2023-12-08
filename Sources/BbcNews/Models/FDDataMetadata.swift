//
//  FDHeadlineByline.swift
//
//
//  Created by Bilaal Rashid on 07/12/2023.
//

import Foundation

struct FDDataMetadata: Codable, Equatable, Hashable {
    let name: String
    let allowAdvertising: Bool
    let lastUpdated: Int
    let shareUrl: String?
}
