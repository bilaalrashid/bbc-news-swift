//
//  FDMedia.swift
//  ReadBeeb
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

struct FDMedia: Codable, Equatable, Hashable {
    let type: String
    let source: FDMediaSource
    let image: FDImage
    let metadata: FDMediaMetadata
}

struct FDMediaSource: Codable, Equatable, Hashable {
    let type: String
    let id: String
    let duration: Int
    let aspectRatio: Double
    let isLive: Bool
    let canAutoPlay: Bool
    let episodePid: String
}

struct FDMediaMetadata: Codable, Equatable, Hashable {
    let title: String
    let summary: String?
    let caption: String
    let timestamp: Int
    let associatedContentUrl: String
    let allowAdvertising: Bool
}
