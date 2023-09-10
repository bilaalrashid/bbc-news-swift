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
    case carousel(FDCarousel)
//    case chipList
//    case callToActionBanner
//    case copyright

    case media(FDMedia)
    case image(FDImage)
    case headline(FDHeadline)
    case textContainer(FDTextContainer)
    case sectionHeader(FDSectionHeader)
    case contentList(FDContentList)
    case storyPromo(FDStoryPromo)
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
        if let value = try? container.decode(FDCarousel.self), value.type == "Carousel" {
            self = .carousel(value)
            return
        }
        if let value = try? container.decode(FDMedia.self), value.type == "Media" {
            self = .media(value)
            return
        }
        if let value = try? container.decode(FDImage.self), value.type == "Image" {
            self = .image(value)
            return
        }
        if let value = try? container.decode(FDHeadline.self), value.type == "Headline" {
            self = .headline(value)
            return
        }
        if let value = try? container.decode(FDTextContainer.self), value.type == "textContainer" {
            self = .textContainer(value)
            return
        }
        if let value = try? container.decode(FDSectionHeader.self), value.type == "SectionHeader" {
            self = .sectionHeader(value)
            return
        }
        if let value = try? container.decode(FDContentList.self), value.type == "ContentList" {
            self = .contentList(value)
            return
        }
        if let value = try? container.decode(FDStoryPromo.self), value.type == "StoryPromo" {
            self = .storyPromo(value)
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
        case .carousel(let value):
            try container.encode(value)
        case .media(let value):
            try container.encode(value)
        case .image(let value):
            try container.encode(value)
        case .headline(let value):
            try container.encode(value)
        case .textContainer(let value):
            try container.encode(value)
        case .sectionHeader(let value):
            try container.encode(value)
        case .contentList(let value):
            try container.encode(value)
        case .storyPromo(let value):
            try container.encode(value)
        case .unknown:
            try container.encode(false)
        }
    }
}

struct FDBillboard: Codable, Equatable, Hashable {
    let type: String
    let items: [FDStoryPromo]
}

struct FDHierarchicalCollection: Codable, Equatable, Hashable {
    let type: String
    let items: [FDStoryPromo]
}

struct FDCollectionHeader: Codable, Equatable, Hashable {
    let type: String
    let text: String
    let link: FDLink?
}

struct FDSimpleCollection: Codable, Equatable, Hashable {
    let type: String
    let items: [FDStoryPromo]
}

struct FDCarousel: Codable, Equatable, Hashable {
    let type: String
    let items: [FDStoryPromo]
    let aspectRatio: Double
    let presentation: FDPresentation
    let hasPageIndicator: Bool
}

struct FDStoryPromo: Codable, Equatable, Hashable {
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
    let destinations: [FDPresentation]
}

struct FDLinkDestination: Codable, Equatable, Hashable {
    let sourceFormat: String
    let url: String
    let id: String
    let presentation: FDPresentation
}

struct FDPresentation: Codable, Equatable, Hashable {
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
    let caption: String?
    let copyrightText: String?
}

struct FDItemBrand: Codable, Equatable, Hashable {
    let type: String
    let brand: String
    let text: String?
    let duration: Int?
}

struct FDMedia: Codable, Equatable, Hashable {
    let type: String
    let source: FDMediaSource
    let image: FDImage
    let metadata: FDMediaMetadata
}

struct FDMediaSource: Codable, Equatable, Hashable {
    let title: String
    let summary: String
    let caption: String
    let timestamp: Int
    let allowAdvertising: Bool
}

struct FDMediaMetadata: Codable, Equatable, Hashable {
    let type: String
    let id: String
    let duration: Int
    let aspectRatio: Double
    let isLive: Bool
    let canAutoPlay: Bool
    let episodePid: Bool
}

struct FDHeadline: Codable, Equatable, Hashable {
    let type: String
    let text: String
    let lastUpdated: Int
    let byline: FDHeadlineByline
    let topic: FDTopic
    let languageCode: String
    let readTimeMinutes: Int
}

struct FDHeadlineByline: Codable, Equatable, Hashable {
    let name: String
    let purpose: String
}

struct FDTextContainer: Codable, Equatable, Hashable {
    let type: String?
    let containerType: String?
    let text: FDTextContainerText
}

struct FDTextContainerText: Codable, Equatable, Hashable {
    let text: String
    let spans: [FDTextContainerSpan]
}

struct FDTextContainerSpan: Codable, Equatable, Hashable {
    let type: String
    let startIndex: Int
    let length: Int
    let link: FDLink
}

struct FDContentList: Codable, Equatable, Hashable {
    let type: String
    let ordering: String
    let listItems: [FDTextContainerText]
}

struct FDSectionHeader: Codable, Equatable, Hashable {
    let type: String
    let text: String
}
