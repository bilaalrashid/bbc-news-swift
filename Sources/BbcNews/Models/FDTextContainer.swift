//
//  FDTextContainer.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

struct FDTextContainer: Codable, Equatable, Hashable {
    let type: String
    let containerType: String
    let text: FDTextContainerText
}
