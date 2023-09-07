//
//  BBCNewsAPIFDResult.swift
//  ReadBeeb
//
//  Created by Bilaal Rashid on 27/08/2023.
//

import Foundation

// MARK: - BBCNewsAPIFDResult
struct BBCNewsAPIFDResult: Codable, Equatable, Hashable {
    let data: BBCNewsAPIFDData
    let contentType: String
}

// MARK: - BBCNewsAPIFDData
struct BBCNewsAPIFDData: Codable, Equatable, Hashable {
    let metadata: BBCNewsAPIFDDataMetadata
    let items: [BBCNewsAPIFDDataItem]
    let trackers: [BBCNewsAPIFDDataTracker]
}

// MARK: - BBCNewsAPIFDDataItem
struct BBCNewsAPIFDDataItem: Codable, Equatable, Hashable {
    let type: String
    let items: [BBCNewsAPIFDItemItem]?
    let text: BBCNewsAPIFDText?
    let link: BBCNewsAPIFDItemLink?
    let period: String?
    let location: BBCNewsAPIFDLocation?
    let forecast: BBCNewsAPIFDForecast?
    let aspectRatio: Double?
    let presentation: BBCNewsAPIFDItemPresentation?
    let hasPageIndicator: Bool?
    let trackedEvents: [BBCNewsAPIFDTrackedEvent]?
    let title, subtitle: String?
    let buttons: [BBCNewsAPIFDButton]?
    let lastUpdated: Int?
    let source: BBCNewsAPIFDItemSource?
    let image: BBCNewsAPIFDImage?
    let metadata: BBCNewsAPIFDItemMetadata?
    let byline: BBCNewsAPIFDByline?
    let topic: BBCNewsAPIFDTopic?
    let languageCode: BBCNewsAPIFDLanguageCode?
    let readTimeMinutes: Int?
    let containerType: BBCNewsAPIFDContainerType?
    let ordering: String?
    let listItems: [BBCNewsAPIFDListItem]?
    let style: BBCNewsAPIFDStyle?
    let subtext: String?
    let updated: Int?
}

// MARK: - BBCNewsAPIFDButton
struct BBCNewsAPIFDButton: Codable, Equatable, Hashable {
    let title: String
    let link: BBCNewsAPIFDButtonLink
}

// MARK: - BBCNewsAPIFDButtonLink
struct BBCNewsAPIFDButtonLink: Codable, Equatable, Hashable {
    let trackers: [JSONAny]
    let destinations: [BBCNewsAPIFDPurpleDestination]

    func hash(into hasher: inout Hasher) {
        hasher.combine(destinations)
    }

    static func == (lhs: BBCNewsAPIFDButtonLink, rhs: BBCNewsAPIFDButtonLink) -> Bool {
        return lhs.destinations == rhs.destinations
    }
}

// MARK: - BBCNewsAPIFDPurpleDestination
struct BBCNewsAPIFDPurpleDestination: Codable, Equatable, Hashable {
    let sourceFormat: BBCNewsAPIFDSourceFormat
    let url, id: String
    let presentation: BBCNewsAPIFDPurplePresentation
}

// MARK: - BBCNewsAPIFDPurplePresentation
struct BBCNewsAPIFDPurplePresentation: Codable, Equatable, Hashable {
    let type: BBCNewsAPIFDPresentationType
    let contentSource: String
}

enum BBCNewsAPIFDPresentationType: String, Codable, Equatable, Hashable {
    case singleRenderer = "SINGLE_RENDERER"
    case verticalVideo = "VERTICAL_VIDEO"
    case web = "WEB"
}

enum BBCNewsAPIFDSourceFormat: String, Codable, Equatable, Hashable {
    case abl = "ABL"
    case html = "HTML"
}

// MARK: - BBCNewsAPIFDByline
struct BBCNewsAPIFDByline: Codable, Equatable, Hashable {
    let name, purpose: String
}

enum BBCNewsAPIFDContainerType: String, Codable, Equatable, Hashable {
    case body = "body"
    case crosshead = "crosshead"
    case introduction = "introduction"
}

// MARK: - BBCNewsAPIFDForecast
struct BBCNewsAPIFDForecast: Codable, Equatable, Hashable {
    let description: String
    let high, low: BBCNewsAPIFDHigh
    let icon: String
    let nighttimeLayout: Bool
}

// MARK: - BBCNewsAPIFDHigh
struct BBCNewsAPIFDHigh: Codable, Equatable, Hashable {
    let celsius: Int
}

// MARK: - BBCNewsAPIFDImage
struct BBCNewsAPIFDImage: Codable, Equatable, Hashable {
    let type: BBCNewsAPIFDImageType
    let source: BBCNewsAPIFDImageSource
    let metadata: BBCNewsAPIFDImageMetadata?
}

// MARK: - BBCNewsAPIFDImageMetadata
struct BBCNewsAPIFDImageMetadata: Codable, Equatable, Hashable {
    let caption, copyrightText, altText: String?
}

// MARK: - BBCNewsAPIFDImageSource
struct BBCNewsAPIFDImageSource: Codable, Equatable, Hashable {
    let url: String
    let sizingMethod: BBCNewsAPIFDSizingMethod
    let aspectRatio: Double?
}

// MARK: - BBCNewsAPIFDSizingMethod
struct BBCNewsAPIFDSizingMethod: Codable, Equatable, Hashable {
    let type: BBCNewsAPIFDSizingMethodType
    let widthToken: BBCNewsAPIFDWidthToken
    let widths: [Int]
}

enum BBCNewsAPIFDSizingMethodType: String, Codable, Equatable, Hashable {
    case specificWidths = "SPECIFIC_WIDTHS"
}

enum BBCNewsAPIFDWidthToken: String, Codable, Equatable, Hashable {
    case width = "{width}"
}

enum BBCNewsAPIFDImageType: String, Codable, Equatable, Hashable {
    case image = "Image"
}

// MARK: - BBCNewsAPIFDItemItem
struct BBCNewsAPIFDItemItem: Codable, Equatable, Hashable {
    let type: BBCNewsAPIFDItemType?
    let style: BBCNewsAPIFDStyle?
    let languageCode: BBCNewsAPIFDLanguageCode?
    let text: String?
    let link: BBCNewsAPIFDItemLink
    let subtext: String?
    let updated: Int?
    let topic: BBCNewsAPIFDTopic?
    let image: BBCNewsAPIFDImage?
    let badges: [BBCNewsAPIFDBadge]?
    let uasToken, title: String?
}

// MARK: - BBCNewsAPIFDBadge
struct BBCNewsAPIFDBadge: Codable, Equatable, Hashable {
    let type: BBCNewsAPIFDBadgeType
    let brand: BBCNewsAPIFDBbcProducer
    let text: String?
    let duration: Int?
}

enum BBCNewsAPIFDBbcProducer: String, Codable, Equatable, Hashable {
    case bbcProducerDEFAULT = "DEFAULT"
    case news = "NEWS"
    case sport = "SPORT"
}

enum BBCNewsAPIFDBadgeType: String, Codable, Equatable, Hashable {
    case breaking = "BREAKING"
    case live = "LIVE"
    case ordered = "ORDERED"
    case video = "VIDEO"
}

enum BBCNewsAPIFDLanguageCode: String, Codable, Equatable, Hashable {
    case enGB = "en-gb"
}

// MARK: - BBCNewsAPIFDItemLink
struct BBCNewsAPIFDItemLink: Codable, Equatable, Hashable {
    let trackers: [BBCNewsAPIFDLinkTracker]
    let destinations: [BBCNewsAPIFDFluffyDestination]
}

// MARK: - BBCNewsAPIFDFluffyDestination
struct BBCNewsAPIFDFluffyDestination: Codable, Equatable, Hashable {
    let sourceFormat: BBCNewsAPIFDSourceFormat
    let url, id: String
    let presentation: BBCNewsAPIFDFluffyPresentation
}

// MARK: - BBCNewsAPIFDFluffyPresentation
struct BBCNewsAPIFDFluffyPresentation: Codable, Equatable, Hashable {
    let type: BBCNewsAPIFDPresentationType
    let canShare: Bool?
    let focusedItemIndex: Int?
    let contentSource, title: String?
}

// MARK: - BBCNewsAPIFDLinkTracker
struct BBCNewsAPIFDLinkTracker: Codable, Equatable, Hashable {
    let type: BBCNewsAPIFDTrackerType
    let payload: BBCNewsAPIFDPurplePayload
}

// MARK: - BBCNewsAPIFDPurplePayload
struct BBCNewsAPIFDPurplePayload: Codable, Equatable, Hashable {
    let actionType: String?
    let actionName: String

    enum CodingKeys: String, CodingKey {
        case actionType = "action_type"
        case actionName = "action_name"
    }
}

enum BBCNewsAPIFDTrackerType: String, Codable, Equatable, Hashable {
    case atiV2 = "ati_v2"
    case optimizelyV1 = "optimizely_v1"
}

enum BBCNewsAPIFDStyle: String, Codable {
    case badgeLEDPromoCard = "BADGE_LED_PROMO_CARD"
    case portraitPromoCard = "PORTRAIT_PROMO_CARD"
    case smallHorizontalPromoCard = "SMALL_HORIZONTAL_PROMO_CARD"
}

// MARK: - BBCNewsAPIFDTopic
struct BBCNewsAPIFDTopic: Codable, Equatable, Hashable {
    let text: String
    let link: BBCNewsAPIFDItemLink
}

enum BBCNewsAPIFDItemType: String, Codable, Equatable, Hashable {
    case storyPromo = "StoryPromo"
}

// MARK: - BBCNewsAPIFDListItem
struct BBCNewsAPIFDListItem: Codable, Equatable, Hashable {
    let text: String
    let spans: [BBCNewsAPIFDSpan]
}

// MARK: - BBCNewsAPIFDSpan
struct BBCNewsAPIFDSpan: Codable, Equatable, Hashable {
    let type: String
    let startIndex, length: Int
    let link: BBCNewsAPIFDSpanLink
}

// MARK: - BBCNewsAPIFDSpanLink
struct BBCNewsAPIFDSpanLink: Codable, Equatable, Hashable {
    let trackers: [JSONAny]
    let destinations: [BBCNewsAPIFDTentacledDestination]

    func hash(into hasher: inout Hasher) {
        hasher.combine(destinations)
    }

    static func == (lhs: BBCNewsAPIFDSpanLink, rhs: BBCNewsAPIFDSpanLink) -> Bool {
        return lhs.destinations == rhs.destinations
    }
}

// MARK: - BBCNewsAPIFDTentacledDestination
struct BBCNewsAPIFDTentacledDestination: Codable, Equatable, Hashable {
    let sourceFormat: BBCNewsAPIFDSourceFormat
    let url: String
    let id: String
    let presentation: BBCNewsAPIFDTentacledPresentation
}

// MARK: - BBCNewsAPIFDTentacledPresentation
struct BBCNewsAPIFDTentacledPresentation: Codable, Equatable, Hashable {
    let type: BBCNewsAPIFDPresentationType
    let canShare: Bool
}

// MARK: - BBCNewsAPIFDLocation
struct BBCNewsAPIFDLocation: Codable, Equatable, Hashable {
    let name: String
    let isCurrentLocation: Bool
}

// MARK: - BBCNewsAPIFDItemMetadata
struct BBCNewsAPIFDItemMetadata: Codable, Equatable, Hashable {
    let title, summary, caption: String?
    let timestamp: Int?
    let allowAdvertising: Bool?
    let altText, copyrightText: String?
}

// MARK: - BBCNewsAPIFDItemPresentation
struct BBCNewsAPIFDItemPresentation: Codable, Equatable, Hashable {
    let type: String
}

// MARK: - BBCNewsAPIFDItemSource
struct BBCNewsAPIFDItemSource: Codable, Equatable, Hashable {
    let id: String?
    let type: BBCNewsAPIFDBadgeType?
    let duration: Int?
    let aspectRatio: Double
    let isLive, canAutoPlay: Bool?
    let episodePID, url: String?
    let sizingMethod: BBCNewsAPIFDSizingMethod?

    enum CodingKeys: String, CodingKey {
        case id, type, duration, aspectRatio, isLive, canAutoPlay
        case episodePID = "episodePid"
        case url, sizingMethod
    }
}

enum BBCNewsAPIFDText: Codable, Equatable, Hashable {
    case bbcNewsAPIFDListItem(BBCNewsAPIFDListItem)
    case string(String)

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let x = try? container.decode(String.self) {
            self = .string(x)
            return
        }
        if let x = try? container.decode(BBCNewsAPIFDListItem.self) {
            self = .bbcNewsAPIFDListItem(x)
            return
        }
        throw DecodingError.typeMismatch(BBCNewsAPIFDText.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for BBCNewsAPIFDText"))
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .bbcNewsAPIFDListItem(let x):
            try container.encode(x)
        case .string(let x):
            try container.encode(x)
        }
    }
}

// MARK: - BBCNewsAPIFDTrackedEvent
struct BBCNewsAPIFDTrackedEvent: Codable, Equatable, Hashable {
    let event: String
    let trackers: [BBCNewsAPIFDLinkTracker]
}

// MARK: - BBCNewsAPIFDDataMetadata
struct BBCNewsAPIFDDataMetadata: Codable, Equatable, Hashable {
    let name: String
    let allowAdvertising: Bool
    let lastUpdated: Int
    let shareURL: String

    enum CodingKeys: String, CodingKey {
        case name, allowAdvertising, lastUpdated
        case shareURL = "shareUrl"
    }
}

// MARK: - BBCNewsAPIFDDataTracker
struct BBCNewsAPIFDDataTracker: Codable, Equatable, Hashable {
    let type: String
    let payload: BBCNewsAPIFDFluffyPayload
}

// MARK: - BBCNewsAPIFDFluffyPayload
struct BBCNewsAPIFDFluffyPayload: Codable, Equatable, Hashable {
    let pageTitle, bbcContentType: String?
    let bbcProducer: BBCNewsAPIFDBbcProducer?
    let name: String?
    let id: String?
    let sections, actionName, section, bbcContentID: String?
    let uasToken: String?

    enum CodingKeys: String, CodingKey {
        case pageTitle = "page_title"
        case bbcContentType = "bbc_content_type"
        case bbcProducer = "bbc_producer"
        case name, id, sections
        case actionName = "action_name"
        case section
        case bbcContentID = "bbc_content_id"
        case uasToken
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

