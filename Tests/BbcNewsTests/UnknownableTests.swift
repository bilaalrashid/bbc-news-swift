//
//  UnknownableTests.swift
//  BbcNewsTests
//
//  Created by Bilaal Rashid on 26/05/2024.
//

import XCTest
@testable import BbcNews

final class UnknownableTests: XCTestCase {
    private enum Test: String, Codable, Unknownable {
        case test1
        case test2
        case unknown
    }

    private struct TestContainer: Codable {
        let test: Test
    }

    func testUnknownableWithKnownValue() throws {
        let json = #"{"test": "test1"}"#
        // swiftlint:disable:next force_unwrapping
        let val = try JSONDecoder().decode(TestContainer.self, from: json.data(using: .utf8)!)
        XCTAssert(val.test == .test1)
    }

    func testUnknownableWithUnknownValue() throws {
        let json = #"{"test": "test3"}"#
        // swiftlint:disable:next force_unwrapping
        let val = try JSONDecoder().decode(TestContainer.self, from: json.data(using: .utf8)!)
        XCTAssert(val.test == .unknown)
    }
}
