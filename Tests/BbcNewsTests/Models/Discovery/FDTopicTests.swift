//
//  FDTopicTests.swift
//  BbcNewsTests
//
//  Created by Bilaal Rashid on 11/12/2023.
//

import XCTest
import BbcNews

final class FDTopicTests: XCTestCase {
    func testDecodeJson() throws {
        let decoder = JSONDecoder()
        let json = MockData.fdTopic.json.data(using: .utf8)!

        XCTAssertEqual(
            try decoder.decode(FDTopic.self, from: json),
            MockData.fdTopic.expected,
            "Unable to decode JSON to FDTopic"
        )
    }
}
