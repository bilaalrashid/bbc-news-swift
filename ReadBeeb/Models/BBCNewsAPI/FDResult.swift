//
//  FDResult.swift
//  ReadBeeb
//
//  Created by Bilaal Rashid on 09/09/2023.
//

import Foundation

struct FDResult: Codable, Equatable, Hashable {
    let data: FDData
    let contentType: String
}

struct FDData: Codable, Equatable, Hashable {
    let metadata: FDResultMetadata
    let items: [FDItem]
}

struct FDResultMetadata: Codable, Equatable, Hashable {
    let name: String
    let allowAdvertising: Bool
    let lastUpdated: Int
    let shareUrl: String?
}

enum FDItem: Codable, Equatable, Hashable {
    case billboard(FDBillboard)
    case hierarchicalCollection(FDHierarchicalCollection)
    case collectionHeader(FDCollectionHeader)
    case simpleCollection(FDSimpleCollection)
//    case weatherPromoSummary
//    case carousel
//    case chipList
//    case callToActionBanner
//    case copyright

    case unknown

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(FDBillboard.self), value.type == "Billboard" {
            self = .billboard(value)
            return
        }
        if let value = try? container.decode(FDHierarchicalCollection.self), value.type == "HierarchicalCollection" {
            self = .hierarchicalCollection(value)
            return
        }
        if let value = try? container.decode(FDCollectionHeader.self), value.type == "CollectionHeader" {
            self = .collectionHeader(value)
            return
        }
        if let value = try? container.decode(FDSimpleCollection.self), value.type == "SimpleCollection" {
            self = .simpleCollection(value)
            return
        }
        self = .unknown
        return
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .billboard(let value):
            try container.encode(value)
        case .hierarchicalCollection(let value):
            try container.encode(value)
        case .collectionHeader(let value):
            try container.encode(value)
        case .simpleCollection(let value):
            try container.encode(value)
        case .unknown:
            try container.encode(false)
        }
    }
}

struct FDBillboard: Codable, Equatable, Hashable {
    let type: String
    let items: [FDCollectionItem]
}

struct FDHierarchicalCollection: Codable, Equatable, Hashable {
    let type: String
    let items: [FDCollectionItem]
}

struct FDCollectionHeader: Codable, Equatable, Hashable {
    let type: String
    let text: String
    let link: FDLink?
}

struct FDSimpleCollection: Codable, Equatable, Hashable {
    let type: String
    let items: [FDCollectionItem]
}

struct FDCollectionItem: Codable, Equatable, Hashable {
    let type: String
    let style: String
    let languageCode: String
    let text: String?
    let link: FDLink
    let subtext: String?
    let updated: Int?
    let topic: FDTopic?
    let image: FDImage?
    let badges: [FDItemBrand]?
    let uasToken: String?
}

struct FDLink: Codable, Equatable, Hashable {
    let destinations: [FDLinkDestination]
}

struct FDLinkDestination: Codable, Equatable, Hashable {
    let sourceFormat: String
    let url: String
    let id: String
    let presentation: FDLinkDestinationPresentation
}

struct FDLinkDestinationPresentation: Codable, Equatable, Hashable {
    let type: String
    let title: String?
    let canShare: Bool?
}

struct FDTopic: Codable, Equatable, Hashable {
    let text: String
    let link: FDLink?
}

struct FDImage: Codable, Equatable, Hashable {
    let type: String
    let source: FDImageSource
    let metdata: FDImageMetadata?
}

struct FDImageSource: Codable, Equatable, Hashable {
    let url: String
    let sizingMethod: FDImageSizingMethod
    let aspectRatio: Double?
}

struct FDImageSizingMethod: Codable, Equatable, Hashable {
    let type: String
    let widthToken: String
    let widths: [Int]
}

struct FDImageMetadata: Codable, Equatable, Hashable {
    let altText: String
    let caption: String
}

struct FDItemBrand: Codable, Equatable, Hashable {
    let type: String
    let brand: String
    let text: String?
    let duration: Int?
}
