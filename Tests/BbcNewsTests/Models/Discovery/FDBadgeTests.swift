//
//  FDBadgeTests.swift
//  BbcNewsTests
//
//  Created by Bilaal Rashid on 11/12/2023.
//

import XCTest
import BbcNews

final class FDBadgeTests: XCTestCase {
    func testDecodeMinimalJson() throws {
        let decoder = JSONDecoder()
        let json = MockData.fdBadge[0].json.data(using: .utf8)!

        XCTAssertEqual(
            try decoder.decode(FDBadge.self, from: json),
            MockData.fdBadge[0].expected,
            "Unable to decode minimal JSON to FDBadge"
        )
    }

    func testDecodeFullJson() throws {
        let decoder = JSONDecoder()
        let json = MockData.fdBadge[1].json.data(using: .utf8)!

        XCTAssertEqual(
            try decoder.decode(FDBadge.self, from: json),
            MockData.fdBadge[1].expected,
            "Unable to decode full JSON to FDBadge"
        )
    }
}
