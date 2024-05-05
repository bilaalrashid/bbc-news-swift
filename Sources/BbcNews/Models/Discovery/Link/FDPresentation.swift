//
//  FDPresentation.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

public struct FDPresentation: Codable, Equatable, Hashable {
    public var type: String
    public var title: String?
    public var canShare: Bool?
    public var contentSource: String?

    public init(type: String, title: String? = nil, canShare: Bool? = nil, contentSource: String? = nil) {
        self.type = type
        self.title = title
        self.canShare = canShare
        self.contentSource = contentSource
    }
}
