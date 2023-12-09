//
//  FDTopic.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

public struct FDTopic: Codable, Equatable, Hashable {
    public let text: String?
    public let title: String?
    public let link: FDLink?
}
