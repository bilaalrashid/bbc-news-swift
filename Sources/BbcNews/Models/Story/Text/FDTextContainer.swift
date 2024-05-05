//
//  FDTextContainer.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

public struct FDTextContainer: Codable, Equatable, Hashable {
    public var type: String
    public var containerType: String
    public var text: FDTextContainerText

    public init(type: String, containerType: String, text: FDTextContainerText) {
        self.type = type
        self.containerType = containerType
        self.text = text
    }
}
