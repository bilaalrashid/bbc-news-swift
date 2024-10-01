//
//  FDItem.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

/// The list of ordered items to be displayed to the user for a page returned by the API.
public enum FDItem: Codable, Equatable, Hashable, Sendable {
    case billboard(FDBillboard)
    case hierarchicalCollection(FDHierarchicalCollection)
    case collectionHeader(FDCollectionHeader)
    case simpleCollection(FDSimpleCollection)
    case simplePromoGrid(FDSimplePromoGrid)
    case weatherPromoSummary(FDWeatherPromoSummary)
    case carousel(FDCarousel)
    case videoPortraitStory(FDVideoPortraitStory)
    case topicButton(FDTopicButton)
    case chipList(FDChipList)
    case copyright(FDCopyright)
    case media(FDMedia)
    case imageContainer(FDImageContainer)
    case image(FDImage)
    case headline(FDHeadline)
    case byline(FDByline)
    case textContainer(FDTextContainer)
    case sectionHeader(FDSectionHeader)
    case contentList(FDContentList)
    case storyPromo(FDStoryPromo)
    case callToActionBanner(FDCallToActionBanner)
    case unknown

    // swiftlint:disable cyclomatic_complexity function_body_length
    public init(from decoder: Decoder) throws {
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
        if let value = try? container.decode(FDSimplePromoGrid.self), value.type == "SimplePromoGrid" {
            self = .simplePromoGrid(value)
            return
        }
        if let value = try? container.decode(FDWeatherPromoSummary.self), value.type == "WeatherPromoSummary" {
            self = .weatherPromoSummary(value)
            return
        }
        if let value = try? container.decode(FDCarousel.self), value.type == "Carousel" {
            self = .carousel(value)
            return
        }
        if let value = try? container.decode(FDVideoPortraitStory.self), value.type == "VideoPortraitStory" {
            self = .videoPortraitStory(value)
            return
        }
        if let value = try? container.decode(FDTopicButton.self), value.type == "TopicButton" {
            self = .topicButton(value)
            return
        }
        if let value = try? container.decode(FDChipList.self), value.type == "ChipList" {
            self = .chipList(value)
            return
        }
        if let value = try? container.decode(FDCopyright.self), value.type == "Copyright" {
            self = .copyright(value)
            return
        }
        if let value = try? container.decode(FDMedia.self), value.type == "Media" {
            self = .media(value)
            return
        }
        if let value = try? container.decode(FDImageContainer.self), value.type == "ImageContainer" {
            self = .imageContainer(value)
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
        if let value = try? container.decode(FDByline.self), value.type == "Byline" {
            self = .byline(value)
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
        if let value = try? container.decode(FDCallToActionBanner.self), value.type == "CallToActionBanner" {
            self = .callToActionBanner(value)
            return
        }
        self = .unknown
    }
    // swiftlint:enable cyclomatic_complexity function_body_length

    // swiftlint:disable cyclomatic_complexity
    public func encode(to encoder: Encoder) throws {
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
        case .simplePromoGrid(let value):
            try container.encode(value)
        case .weatherPromoSummary(let value):
            try container.encode(value)
        case .carousel(let value):
            try container.encode(value)
        case .videoPortraitStory(let value):
            try container.encode(value)
        case .topicButton(let value):
            try container.encode(value)
        case .chipList(let value):
            try container.encode(value)
        case .copyright(let value):
            try container.encode(value)
        case .media(let value):
            try container.encode(value)
        case .imageContainer(let value):
            try container.encode(value)
        case .image(let value):
            try container.encode(value)
        case .headline(let value):
            try container.encode(value)
        case .byline(let value):
            try container.encode(value)
        case .textContainer(let value):
            try container.encode(value)
        case .sectionHeader(let value):
            try container.encode(value)
        case .contentList(let value):
            try container.encode(value)
        case .storyPromo(let value):
            try container.encode(value)
        case .callToActionBanner(let value):
            try container.encode(value)
        case .unknown:
            try container.encode(false)
        }
    }
    // swiftlint:enable cyclomatic_complexity
}
