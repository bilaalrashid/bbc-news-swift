//
//  FDTextContainerText.swift
//
//
//  Created by Bilaal Rashid on 08/12/2023.
//

import Foundation

struct FDTextContainerText: Codable, Equatable, Hashable {
    let text: String
    let spans: [FDTextContainerSpan]
}
