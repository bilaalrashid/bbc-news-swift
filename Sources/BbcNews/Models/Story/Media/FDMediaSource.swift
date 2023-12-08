//
//  FDMediaSource.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 07/12/2023.
//

import Foundation

struct FDMediaSource: Codable, Equatable, Hashable {
    let type: String
    let id: String
    let duration: Int
    let aspectRatio: Double
    let isLive: Bool
    let canAutoPlay: Bool
    let episodePid: String
}
