//
//  FDChipList.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

public struct FDChipList: Codable, Equatable, Hashable {
    public let type: String
    public let items: [FDTopic]
}
