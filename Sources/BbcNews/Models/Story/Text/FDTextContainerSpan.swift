//
//  FDTextContainerSpan.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 08/12/2023.
//

import Foundation

public struct FDTextContainerSpan: Codable, Equatable, Hashable {
    public let type: String
    public let startIndex: Int
    public let length: Int
    public let attribute: String?
    public let link: FDLink?
}
