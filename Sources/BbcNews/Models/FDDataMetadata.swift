//
//  FDHeadlineByline.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 07/12/2023.
//

import Foundation

public struct FDDataMetadata: Codable, Equatable, Hashable {
    public let name: String
    public let allowAdvertising: Bool
    public let lastUpdated: Int
    public let shareUrl: String?
}
