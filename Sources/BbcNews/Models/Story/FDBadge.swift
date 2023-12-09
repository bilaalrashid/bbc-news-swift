//
//  FDBadge.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 07/12/2023.
//

import Foundation

public struct FDBadge: Codable, Equatable, Hashable {
    public let type: String
    public let brand: String
    public let text: String?
    public let duration: Int?

    public init(type: String, brand: String, text: String? = nil, duration: Int? = nil) {
        self.type = type
        self.brand = brand
        self.text = text
        self.duration = duration
    }
}
