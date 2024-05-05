//
//  FDMediaSource.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 07/12/2023.
//

import Foundation

public struct FDMediaSource: Codable, Equatable, Hashable {
    public var type: String
    public var id: String
    public var duration: Int
    public var aspectRatio: Double
    public var isLive: Bool
    public var canAutoPlay: Bool
    public var episodePid: String

    public init(type: String, id: String, duration: Int, aspectRatio: Double, isLive: Bool, canAutoPlay: Bool, episodePid: String) {
        self.type = type
        self.id = id
        self.duration = duration
        self.aspectRatio = aspectRatio
        self.isLive = isLive
        self.canAutoPlay = canAutoPlay
        self.episodePid = episodePid
    }
}
