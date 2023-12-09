//
//  FDPresentation.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

public struct FDPresentation: Codable, Equatable, Hashable {
    public let type: String
    public let title: String?
    public let canShare: Bool?

    public init(type: String, title: String? = nil, canShare: Bool? = nil) {
        self.type = type
        self.title = title
        self.canShare = canShare
    }
}
