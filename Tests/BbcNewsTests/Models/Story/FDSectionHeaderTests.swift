//
//  FDSectionHeaderTests.swift
//  BbcNewsTests
//
//  Created by Bilaal Rashid on 11/12/2023.
//

import XCTest
import BbcNews

final class FDSectionHeaderTests: XCTestCase {
    func testDecodeJson() throws {
        let decoder = JSONDecoder()
        let json = MockData.fdSectionHeader.json.data(using: .utf8)!

        XCTAssertEqual(
            try decoder.decode(FDSectionHeader.self, from: json),
            MockData.fdSectionHeader.expected,
            "Unable to decode JSON to FDSectionHeader"
        )
    }
}
