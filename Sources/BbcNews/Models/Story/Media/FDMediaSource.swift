//
//  FDMediaSource.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 07/12/2023.
//

import Foundation

public struct FDMediaSource: Codable, Equatable, Hashable {
    public let type: String
    public let id: String
    public let duration: Int
    public let aspectRatio: Double
    public let isLive: Bool
    public let canAutoPlay: Bool
    public let episodePid: String
}
