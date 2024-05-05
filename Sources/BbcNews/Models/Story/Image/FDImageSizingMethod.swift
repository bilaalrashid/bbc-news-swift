//
//  FDImageSizingMethod.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 07/12/2023.
//

import Foundation

public struct FDImageSizingMethod: Codable, Equatable, Hashable {
    public var type: String
    public var widthToken: String
    public var widths: [Int]

    public init(type: String, widthToken: String, widths: [Int]) {
        self.type = type
        self.widthToken = widthToken
        self.widths = widths
    }
}
