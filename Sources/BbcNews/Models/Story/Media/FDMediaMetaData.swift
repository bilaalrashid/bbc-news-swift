//
//  FDMediaMetadata.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 07/12/2023.
//

import Foundation

public struct FDMediaMetadata: Codable, Equatable, Hashable {
    public let title: String
    public let summary: String?
    public let caption: String
    public let timestamp: Int
    public let associatedContentUrl: String
    public let allowAdvertising: Bool
}
