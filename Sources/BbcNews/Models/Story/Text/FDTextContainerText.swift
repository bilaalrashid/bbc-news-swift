//
//  FDTextContainerText.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 08/12/2023.
//

import Foundation

public struct FDTextContainerText: Codable, Equatable, Hashable {
    public let text: String
    public let spans: [FDTextContainerSpan]
}
