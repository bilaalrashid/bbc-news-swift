//
//  FDHeadlineByline.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 07/12/2023.
//

import Foundation

public struct FDHeadlineByline: Codable, Equatable, Hashable {
    public let name: String
    public let purpose: String

    public init(name: String, purpose: String) {
        self.name = name
        self.purpose = purpose
    }
}
