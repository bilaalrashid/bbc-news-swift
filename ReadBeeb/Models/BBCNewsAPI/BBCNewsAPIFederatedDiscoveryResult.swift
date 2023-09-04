//
//  BBCNewsAPIFederatedDiscoveryResult.swift
//  ReadBeeb
//
//  Created by Bilaal Rashid on 27/08/2023.
//

import Foundation

// MARK: - BBCNewsAPIFederatedDiscoveryResult
struct BBCNewsAPIFederatedDiscoveryResult: Codable, Equatable, Hashable {
    let data: BBCNewsAPIFederatedDiscoveryData
    let contentType: String
}

// MARK: - BBCNewsAPIFederatedDiscoveryData
struct BBCNewsAPIFederatedDiscoveryData: Codable, Equatable, Hashable {
    let metadata: BBCNewsAPIFederatedDiscoveryDataMetadata
    let items: [BBCNewsAPIFederatedDiscoveryDataItem]
    let trackers: [BBCNewsAPIFederatedDiscoveryDataTracker]
}

// MARK: - BBCNewsAPIFederatedDiscoveryDataItem
struct BBCNewsAPIFederatedDiscoveryDataItem: Codable, Equatable, Hashable {
    let type: String
    let items: [BBCNewsAPIFederatedDiscoveryItemItem]?
    let text: String?
    let link: BBCNewsAPIFederatedDiscoveryItemLink?
    let period: String?
    let location: BBCNewsAPIFederatedDiscoveryLocation?
    let forecast: BBCNewsAPIFederatedDiscoveryForecast?
    let aspectRatio: Double?
    let presentation: BBCNewsAPIFederatedDiscoveryItemPresentation?
    let hasPageIndicator: Bool?
    let trackedEvents: [BBCNewsAPIFederatedDiscoveryTrackedEvent]?
    let title, subtitle: String?
    let buttons: [BBCNewsAPIFederatedDiscoveryButton]?
    let lastUpdated: Int?
}

// MARK: - BBCNewsAPIFederatedDiscoveryButton
struct BBCNewsAPIFederatedDiscoveryButton: Codable, Equatable, Hashable {
    let title: String
    let link: BBCNewsAPIFederatedDiscoveryButtonLink
}

// MARK: - BBCNewsAPIFederatedDiscoveryButtonLink
struct BBCNewsAPIFederatedDiscoveryButtonLink: Codable, Equatable, Hashable {
    let trackers: [JSONAny]
    let destinations: [BBCNewsAPIFederatedDiscoveryPurpleDestination]

    func hash(into hasher: inout Hasher) {
        hasher.combine(destinations)
    }

    static func == (lhs: BBCNewsAPIFederatedDiscoveryButtonLink, rhs: BBCNewsAPIFederatedDiscoveryButtonLink) -> Bool {
        return lhs.destinations == rhs.destinations
    }
}

// MARK: - BBCNewsAPIFederatedDiscoveryPurpleDestination
struct BBCNewsAPIFederatedDiscoveryPurpleDestination: Codable, Equatable, Hashable {
    let sourceFormat: BBCNewsAPIFederatedDiscoverySourceFormat
    let url, id: String
    let presentation: BBCNewsAPIFederatedDiscoveryPurplePresentation
}

// MARK: - BBCNewsAPIFederatedDiscoveryPurplePresentation
struct BBCNewsAPIFederatedDiscoveryPurplePresentation: Codable, Equatable, Hashable {
    let type: BBCNewsAPIFederatedDiscoveryPresentationType
    let contentSource: String
}

enum BBCNewsAPIFederatedDiscoveryPresentationType: String, Codable, Equatable, Hashable {
    case singleRenderer = "SINGLE_RENDERER"
    case verticalVideo = "VERTICAL_VIDEO"
    case web = "WEB"
}

enum BBCNewsAPIFederatedDiscoverySourceFormat: String, Codable, Equatable, Hashable {
    case abl = "ABL"
    case html = "HTML"
}

// MARK: - BBCNewsAPIFederatedDiscoveryForecast
struct BBCNewsAPIFederatedDiscoveryForecast: Codable, Equatable, Hashable {
    let description: String
    let high, low: BBCNewsAPIFederatedDiscoveryHigh
    let icon: String
    let nighttimeLayout: Bool
}

// MARK: - BBCNewsAPIFederatedDiscoveryHigh
struct BBCNewsAPIFederatedDiscoveryHigh: Codable, Equatable, Hashable {
    let celsius: Int
}

// MARK: - BBCNewsAPIFederatedDiscoveryItemItem
struct BBCNewsAPIFederatedDiscoveryItemItem: Codable, Equatable, Hashable {
    let type: BBCNewsAPIFederatedDiscoveryItemType?
    let style: BBCNewsAPIFederatedDiscoveryStyle?
    let languageCode: BBCNewsAPIFederatedDiscoveryLanguageCode?
    let text: String?
    let link: BBCNewsAPIFederatedDiscoveryItemLink
    let subtext: String?
    let updated: Int?
    let topic: BBCNewsAPIFederatedDiscoveryTopic?
    let image: BBCNewsAPIFederatedDiscoveryImage?
    let badges: [BBCNewsAPIFederatedDiscoveryBadge]?
    let uasToken, title: String?
}

// MARK: - BBCNewsAPIFederatedDiscoveryBadge
struct BBCNewsAPIFederatedDiscoveryBadge: Codable, Equatable, Hashable {
    let type: BBCNewsAPIFederatedDiscoveryBadgeType
    let brand: BBCNewsAPIFederatedDiscoveryBbcProducer
    let text: String?
    let duration: Int?
}

enum BBCNewsAPIFederatedDiscoveryBbcProducer: String, Codable, Equatable, Hashable {
    case bbcProducerDEFAULT = "DEFAULT"
    case news = "NEWS"
    case sport = "SPORT"
}

enum BBCNewsAPIFederatedDiscoveryBadgeType: String, Codable, Equatable, Hashable {
    case breaking = "BREAKING"
    case live = "LIVE"
    case ordered = "ORDERED"
    case video = "VIDEO"
}

// MARK: - BBCNewsAPIFederatedDiscoveryImage
struct BBCNewsAPIFederatedDiscoveryImage: Codable, Equatable, Hashable {
    let type: BBCNewsAPIFederatedDiscoveryImageType
    let source: BBCNewsAPIFederatedDiscoverySource
    let metadata: BBCNewsAPIFederatedDiscoveryImageMetadata?
}

// MARK: - BBCNewsAPIFederatedDiscoveryImageMetadata
struct BBCNewsAPIFederatedDiscoveryImageMetadata: Codable, Equatable, Hashable {
    let altText: String
    let caption, copyrightText: String?
}

// MARK: - BBCNewsAPIFederatedDiscoverySource
struct BBCNewsAPIFederatedDiscoverySource: Codable, Equatable, Hashable {
    let aspectRatio: Double?
    let url: String
    let sizingMethod: BBCNewsAPIFederatedDiscoverySizingMethod
}

// MARK: - BBCNewsAPIFederatedDiscoverySizingMethod
struct BBCNewsAPIFederatedDiscoverySizingMethod: Codable, Equatable, Hashable {
    let type: BBCNewsAPIFederatedDiscoverySizingMethodType
    let widthToken: BBCNewsAPIFederatedDiscoveryWidthToken
    let widths: [Int]
}

enum BBCNewsAPIFederatedDiscoverySizingMethodType: String, Codable, Equatable, Hashable {
    case specificWidths = "SPECIFIC_WIDTHS"
}

enum BBCNewsAPIFederatedDiscoveryWidthToken: String, Codable, Equatable, Hashable {
    case width = "{width}"
}

enum BBCNewsAPIFederatedDiscoveryImageType: String, Codable, Equatable, Hashable {
    case image = "Image"
}

enum BBCNewsAPIFederatedDiscoveryLanguageCode: String, Codable, Equatable, Hashable {
    case enGB = "en-gb"
}

// MARK: - BBCNewsAPIFederatedDiscoveryItemLink
struct BBCNewsAPIFederatedDiscoveryItemLink: Codable, Equatable, Hashable {
    let trackers: [BBCNewsAPIFederatedDiscoveryLinkTracker]
    let destinations: [BBCNewsAPIFederatedDiscoveryFluffyDestination]
}

// MARK: - BBCNewsAPIFederatedDiscoveryFluffyDestination
struct BBCNewsAPIFederatedDiscoveryFluffyDestination: Codable, Equatable, Hashable {
    let sourceFormat: BBCNewsAPIFederatedDiscoverySourceFormat
    let url, id: String
    let presentation: BBCNewsAPIFederatedDiscoveryFluffyPresentation
}

// MARK: - BBCNewsAPIFederatedDiscoveryFluffyPresentation
struct BBCNewsAPIFederatedDiscoveryFluffyPresentation: Codable, Equatable, Hashable {
    let type: BBCNewsAPIFederatedDiscoveryPresentationType
    let canShare: Bool?
    let focusedItemIndex: Int?
    let contentSource, title: String?
}

// MARK: - BBCNewsAPIFederatedDiscoveryLinkTracker
struct BBCNewsAPIFederatedDiscoveryLinkTracker: Codable, Equatable, Hashable {
    let type: BBCNewsAPIFederatedDiscoveryTrackerType
    let payload: BBCNewsAPIFederatedDiscoveryPurplePayload
}

// MARK: - BBCNewsAPIFederatedDiscoveryPurplePayload
struct BBCNewsAPIFederatedDiscoveryPurplePayload: Codable, Equatable, Hashable {
    let actionType, actionName: String

    enum CodingKeys: String, CodingKey {
        case actionType = "action_type"
        case actionName = "action_name"
    }
}

enum BBCNewsAPIFederatedDiscoveryTrackerType: String, Codable, Equatable, Hashable {
    case atiV2 = "ati_v2"
}

enum BBCNewsAPIFederatedDiscoveryStyle: String, Codable {
    case badgeLEDPromoCard = "BADGE_LED_PROMO_CARD"
    case portraitPromoCard = "PORTRAIT_PROMO_CARD"
    case smallHorizontalPromoCard = "SMALL_HORIZONTAL_PROMO_CARD"
}

// MARK: - BBCNewsAPIFederatedDiscoveryTopic
struct BBCNewsAPIFederatedDiscoveryTopic: Codable, Equatable, Hashable {
    let text: String
    let link: BBCNewsAPIFederatedDiscoveryItemLink
}

enum BBCNewsAPIFederatedDiscoveryItemType: String, Codable, Equatable, Hashable {
    case storyPromo = "StoryPromo"
}

// MARK: - BBCNewsAPIFederatedDiscoveryLocation
struct BBCNewsAPIFederatedDiscoveryLocation: Codable, Equatable, Hashable {
    let name: String
    let isCurrentLocation: Bool
}

// MARK: - BBCNewsAPIFederatedDiscoveryItemPresentation
struct BBCNewsAPIFederatedDiscoveryItemPresentation: Codable, Equatable, Hashable {
    let type: String
}

// MARK: - BBCNewsAPIFederatedDiscoveryTrackedEvent
struct BBCNewsAPIFederatedDiscoveryTrackedEvent: Codable, Equatable, Hashable {
    let event: String
    let trackers: [BBCNewsAPIFederatedDiscoveryLinkTracker]
}

// MARK: - BBCNewsAPIFederatedDiscoveryDataMetadata
struct BBCNewsAPIFederatedDiscoveryDataMetadata: Codable, Equatable, Hashable {
    let name: String
    let allowAdvertising: Bool
    let lastUpdated: Int
    let shareURL: String

    enum CodingKeys: String, CodingKey {
        case name, allowAdvertising, lastUpdated
        case shareURL = "shareUrl"
    }
}

// MARK: - BBCNewsAPIFederatedDiscoveryDataTracker
struct BBCNewsAPIFederatedDiscoveryDataTracker: Codable, Equatable, Hashable {
    let type: String
    let payload: BBCNewsAPIFederatedDiscoveryFluffyPayload
}

// MARK: - BBCNewsAPIFederatedDiscoveryFluffyPayload
struct BBCNewsAPIFederatedDiscoveryFluffyPayload: Codable, Equatable, Hashable {
    let pageTitle, bbcContentType: String?
    let bbcProducer: BBCNewsAPIFederatedDiscoveryBbcProducer?
    let name: String?
    let id: String?
    let sections, actionName: String?

    enum CodingKeys: String, CodingKey {
        case pageTitle = "page_title"
        case bbcContentType = "bbc_content_type"
        case bbcProducer = "bbc_producer"
        case name, id, sections
        case actionName = "action_name"
    }
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable, Equatable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public func hash(into hasher: inout Hasher) {
        // No-op
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

class JSONCodingKey: CodingKey, Equatable, Hashable {
    let key: String

    required init?(intValue: Int) {
        return nil
    }

    required init?(stringValue: String) {
        key = stringValue
    }

    var intValue: Int? {
        return nil
    }

    var stringValue: String {
        return key
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(key)
    }

    static func == (lhs: JSONCodingKey, rhs: JSONCodingKey) -> Bool {
        return lhs.key == rhs.key
    }
}

class JSONAny: Codable {

    let value: Any

    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }

    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }

    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }

    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }

    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }

    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            self.value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny.decode(from: container)
        }
    }

    public func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: self.value)
        }
    }
}

