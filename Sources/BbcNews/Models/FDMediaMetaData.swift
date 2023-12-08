//
//  FDMediaMetadata.swift
//
//
//  Created by Bilaal Rashid on 07/12/2023.
//

import Foundation

struct FDMediaMetadata: Codable, Equatable, Hashable {
    let title: String
    let summary: String?
    let caption: String
    let timestamp: Int
    let associatedContentUrl: String
    let allowAdvertising: Bool
}
