//
//  FDTopic.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

struct FDTopic: Codable, Equatable, Hashable {
    let text: String?
    let title: String?
    let link: FDLink?
}
