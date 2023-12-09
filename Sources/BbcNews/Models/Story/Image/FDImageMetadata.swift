//
//  FDImageMetadata.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 07/12/2023.
//

import Foundation

public struct FDImageMetadata: Codable, Equatable, Hashable {
    public let altText: String?
    public let caption: String?
    public let copyrightText: String?
}
