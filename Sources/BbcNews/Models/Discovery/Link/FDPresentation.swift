//
//  FDPresentation.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

struct FDPresentation: Codable, Equatable, Hashable {
    let type: String
    let title: String?
    let canShare: Bool?
}
