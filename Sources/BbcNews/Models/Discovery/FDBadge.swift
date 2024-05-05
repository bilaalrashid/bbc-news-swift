//
//  FDBadge.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 07/12/2023.
//

import Foundation

public struct FDBadge: Codable, Equatable, Hashable {
    public var type: String
    public var brand: String
    public var text: String?
    public var duration: Int?

    public init(type: String, brand: String, text: String? = nil, duration: Int? = nil) {
        self.type = type
        self.brand = brand
        self.text = text
        self.duration = duration
    }
}
