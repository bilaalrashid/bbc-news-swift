//
//  FDContentList.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

public struct FDContentList: Codable, Equatable, Hashable {
    public let type: String
    public let ordering: String
    public let listItems: [FDTextContainerText]
}
