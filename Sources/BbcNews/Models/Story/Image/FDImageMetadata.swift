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

    public init(altText: String? = nil, caption: String? = nil, copyrightText: String? = nil) {
        self.altText = altText
        self.caption = caption
        self.copyrightText = copyrightText
    }
}
