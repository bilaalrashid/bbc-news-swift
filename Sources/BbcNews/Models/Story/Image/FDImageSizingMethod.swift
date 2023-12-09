//
//  FDImageSizingMethod.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 07/12/2023.
//

import Foundation

public struct FDImageSizingMethod: Codable, Equatable, Hashable {
    public let type: String
    public let widthToken: String
    public let widths: [Int]

    public init(type: String, widthToken: String, widths: [Int]) {
        self.type = type
        self.widthToken = widthToken
        self.widths = widths
    }
}
