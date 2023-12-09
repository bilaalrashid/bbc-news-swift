//
//  FDTextContainer.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

public struct FDTextContainer: Codable, Equatable, Hashable {
    public let type: String
    public let containerType: String
    public let text: FDTextContainerText
}
