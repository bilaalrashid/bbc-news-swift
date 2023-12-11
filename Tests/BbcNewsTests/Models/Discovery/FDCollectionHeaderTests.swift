//
//  FDCollectionHeaderTests.swift
//  BbcNewsTests
//
//  Created by Bilaal Rashid on 10/12/2023.
//

import XCTest
import BbcNews

final class FDCollectionHeaderTests: XCTestCase {
    func testDecodeMinimalJson() throws {
        let decoder = JSONDecoder()
        let json = MockData.fdCollectionHeader[0].json.data(using: .utf8)!

        XCTAssertEqual(
            try decoder.decode(FDCollectionHeader.self, from: json),
            MockData.fdCollectionHeader[0].expected,
            "Unable to decode minimal JSON to FDCollectionHeader"
        )
    }

    func testDecodeFullJson() throws {
        let decoder = JSONDecoder()
        let json = MockData.fdCollectionHeader[1].json.data(using: .utf8)!

        XCTAssertEqual(
            try decoder.decode(FDCollectionHeader.self, from: json),
            MockData.fdCollectionHeader[1].expected,
            "Unable to decode full JSON to FDCollectionHeader"
        )
    }
}
