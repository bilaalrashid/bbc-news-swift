//
//  BBCNewsAPIHomeTabResult.swift
//  ReadBeeb
//
//  Created by Bilaal Rashid on 27/08/2023.
//

import Foundation

// MARK: - BBCNewsAPIHomeTabResult
struct BBCNewsAPIHomeTabResult: Codable {
    let data: BBCNewsAPIHomeTabData
    let contentType: String
}

// MARK: - BBCNewsAPIHomeTabData
struct BBCNewsAPIHomeTabData: Codable {
    let metadata: BBCNewsAPIHomeTabDataMetadata
    let items: [BBCNewsAPIHomeTabDataItem]
    let trackers: [BBCNewsAPIHomeTabDataTracker]
}

// MARK: - BBCNewsAPIHomeTabDataItem
struct BBCNewsAPIHomeTabDataItem: Codable {
    let type: String
    let items: [BBCNewsAPIHomeTabItemItem]?
    let text: String?
    let link: BBCNewsAPIHomeTabItemLink?
    let period: String?
    let location: BBCNewsAPIHomeTabLocation?
    let forecast: BBCNewsAPIHomeTabForecast?
    let aspectRatio: Double?
    let presentation: BBCNewsAPIHomeTabItemPresentation?
    let hasPageIndicator: Bool?
    let trackedEvents: [BBCNewsAPIHomeTabTrackedEvent]?
    let title, subtitle: String?
    let buttons: [BBCNewsAPIHomeTabButton]?
    let lastUpdated: Int?
}

// MARK: - BBCNewsAPIHomeTabButton
struct BBCNewsAPIHomeTabButton: Codable {
    let title: String
    let link: BBCNewsAPIHomeTabButtonLink
}

// MARK: - BBCNewsAPIHomeTabButtonLink
struct BBCNewsAPIHomeTabButtonLink: Codable {
    let trackers: [JSONAny]
    let destinations: [BBCNewsAPIHomeTabPurpleDestination]
}

// MARK: - BBCNewsAPIHomeTabPurpleDestination
struct BBCNewsAPIHomeTabPurpleDestination: Codable {
    let sourceFormat: BBCNewsAPIHomeTabSourceFormat
    let url, id: String
    let presentation: BBCNewsAPIHomeTabPurplePresentation
}

// MARK: - BBCNewsAPIHomeTabPurplePresentation
struct BBCNewsAPIHomeTabPurplePresentation: Codable {
    let type: BBCNewsAPIHomeTabPresentationType
    let contentSource: String
}

enum BBCNewsAPIHomeTabPresentationType: String, Codable {
    case singleRenderer = "SINGLE_RENDERER"
    case verticalVideo = "VERTICAL_VIDEO"
    case web = "WEB"
}

enum BBCNewsAPIHomeTabSourceFormat: String, Codable {
    case abl = "ABL"
    case html = "HTML"
}

// MARK: - BBCNewsAPIHomeTabForecast
struct BBCNewsAPIHomeTabForecast: Codable {
    let description: String
    let high, low: BBCNewsAPIHomeTabHigh
    let icon: String
    let nighttimeLayout: Bool
}

// MARK: - BBCNewsAPIHomeTabHigh
struct BBCNewsAPIHomeTabHigh: Codable {
    let celsius: Int
}

// MARK: - BBCNewsAPIHomeTabItemItem
struct BBCNewsAPIHomeTabItemItem: Codable {
    let type: BBCNewsAPIHomeTabItemType?
    let style: BBCNewsAPIHomeTabStyle?
    let languageCode: BBCNewsAPIHomeTabLanguageCode?
    let text: String?
    let link: BBCNewsAPIHomeTabItemLink
    let subtext: String?
    let updated: Int?
    let topic: BBCNewsAPIHomeTabTopic?
    let image: BBCNewsAPIHomeTabImage?
    let badges: [BBCNewsAPIHomeTabBadge]?
    let uasToken, title: String?
}

// MARK: - BBCNewsAPIHomeTabBadge
struct BBCNewsAPIHomeTabBadge: Codable {
    let type: BBCNewsAPIHomeTabBadgeType
    let brand: BBCNewsAPIHomeTabBbcProducer
    let text: String?
    let duration: Int?
}

enum BBCNewsAPIHomeTabBbcProducer: String, Codable {
    case bbcProducerDEFAULT = "DEFAULT"
    case news = "NEWS"
    case sport = "SPORT"
}

enum BBCNewsAPIHomeTabBadgeType: String, Codable {
    case breaking = "BREAKING"
    case live = "LIVE"
    case ordered = "ORDERED"
    case video = "VIDEO"
}

// MARK: - BBCNewsAPIHomeTabImage
struct BBCNewsAPIHomeTabImage: Codable {
    let type: BBCNewsAPIHomeTabImageType
    let source: BBCNewsAPIHomeTabSource
    let metadata: BBCNewsAPIHomeTabImageMetadata?
}

// MARK: - BBCNewsAPIHomeTabImageMetadata
struct BBCNewsAPIHomeTabImageMetadata: Codable {
    let altText: String
    let caption, copyrightText: String?
}

// MARK: - BBCNewsAPIHomeTabSource
struct BBCNewsAPIHomeTabSource: Codable {
    let aspectRatio: Double?
    let url: String
    let sizingMethod: BBCNewsAPIHomeTabSizingMethod
}

// MARK: - BBCNewsAPIHomeTabSizingMethod
struct BBCNewsAPIHomeTabSizingMethod: Codable {
    let type: BBCNewsAPIHomeTabSizingMethodType
    let widthToken: BBCNewsAPIHomeTabWidthToken
    let widths: [Int]
}

enum BBCNewsAPIHomeTabSizingMethodType: String, Codable {
    case specificWidths = "SPECIFIC_WIDTHS"
}

enum BBCNewsAPIHomeTabWidthToken: String, Codable {
    case width = "{width}"
}

enum BBCNewsAPIHomeTabImageType: String, Codable {
    case image = "Image"
}

enum BBCNewsAPIHomeTabLanguageCode: String, Codable {
    case enGB = "en-gb"
}

// MARK: - BBCNewsAPIHomeTabItemLink
struct BBCNewsAPIHomeTabItemLink: Codable {
    let trackers: [BBCNewsAPIHomeTabLinkTracker]
    let destinations: [BBCNewsAPIHomeTabFluffyDestination]
}

// MARK: - BBCNewsAPIHomeTabFluffyDestination
struct BBCNewsAPIHomeTabFluffyDestination: Codable {
    let sourceFormat: BBCNewsAPIHomeTabSourceFormat
    let url, id: String
    let presentation: BBCNewsAPIHomeTabFluffyPresentation
}

// MARK: - BBCNewsAPIHomeTabFluffyPresentation
struct BBCNewsAPIHomeTabFluffyPresentation: Codable {
    let type: BBCNewsAPIHomeTabPresentationType
    let canShare: Bool?
    let focusedItemIndex: Int?
    let contentSource, title: String?
}

// MARK: - BBCNewsAPIHomeTabLinkTracker
struct BBCNewsAPIHomeTabLinkTracker: Codable {
    let type: BBCNewsAPIHomeTabTrackerType
    let payload: BBCNewsAPIHomeTabPurplePayload
}

// MARK: - BBCNewsAPIHomeTabPurplePayload
struct BBCNewsAPIHomeTabPurplePayload: Codable {
    let actionType, actionName: String

    enum CodingKeys: String, CodingKey {
        case actionType = "action_type"
        case actionName = "action_name"
    }
}

enum BBCNewsAPIHomeTabTrackerType: String, Codable {
    case atiV2 = "ati_v2"
}

enum BBCNewsAPIHomeTabStyle: String, Codable {
    case badgeLEDPromoCard = "BADGE_LED_PROMO_CARD"
    case portraitPromoCard = "PORTRAIT_PROMO_CARD"
    case smallHorizontalPromoCard = "SMALL_HORIZONTAL_PROMO_CARD"
}

// MARK: - BBCNewsAPIHomeTabTopic
struct BBCNewsAPIHomeTabTopic: Codable {
    let text: String
    let link: BBCNewsAPIHomeTabItemLink
}

enum BBCNewsAPIHomeTabItemType: String, Codable {
    case storyPromo = "StoryPromo"
}

// MARK: - BBCNewsAPIHomeTabLocation
struct BBCNewsAPIHomeTabLocation: Codable {
    let name: String
    let isCurrentLocation: Bool
}

// MARK: - BBCNewsAPIHomeTabItemPresentation
struct BBCNewsAPIHomeTabItemPresentation: Codable {
    let type: String
}

// MARK: - BBCNewsAPIHomeTabTrackedEvent
struct BBCNewsAPIHomeTabTrackedEvent: Codable {
    let event: String
    let trackers: [BBCNewsAPIHomeTabLinkTracker]
}

// MARK: - BBCNewsAPIHomeTabDataMetadata
struct BBCNewsAPIHomeTabDataMetadata: Codable {
    let name: String
    let allowAdvertising: Bool
    let lastUpdated: Int
    let shareURL: String

    enum CodingKeys: String, CodingKey {
        case name, allowAdvertising, lastUpdated
        case shareURL = "shareUrl"
    }
}

// MARK: - BBCNewsAPIHomeTabDataTracker
struct BBCNewsAPIHomeTabDataTracker: Codable {
    let type: String
    let payload: BBCNewsAPIHomeTabFluffyPayload
}

// MARK: - BBCNewsAPIHomeTabFluffyPayload
struct BBCNewsAPIHomeTabFluffyPayload: Codable {
    let pageTitle, bbcContentType: String?
    let bbcProducer: BBCNewsAPIHomeTabBbcProducer?
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

class JSONNull: Codable, Hashable {

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

class JSONCodingKey: CodingKey {
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

