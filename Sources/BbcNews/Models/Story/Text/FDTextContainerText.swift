//
//  FDTextContainerText.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 08/12/2023.
//

import Foundation

public struct FDTextContainerText: Codable, Equatable, Hashable {
    public var text: String
    public var spans: [FDTextContainerSpan]

    public init(text: String, spans: [FDTextContainerSpan]) {
        self.text = text
        self.spans = spans
    }
}
