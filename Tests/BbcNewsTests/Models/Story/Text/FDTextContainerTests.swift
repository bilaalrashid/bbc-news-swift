//
//  FDTextContainerTests.swift
//  BbcNewsTests
//
//  Created by Bilaal Rashid on 12/12/2023.
//

import XCTest
import BbcNews

final class FDTextContainerTests: XCTestCase {
    func testDecodeJson() throws {
        let decoder = JSONDecoder()
        let json = MockData.fdTextContainer.json.data(using: .utf8)!

        XCTAssertEqual(
            try decoder.decode(FDTextContainer.self, from: json),
            MockData.fdTextContainer.expected,
            "Unable to decode JSON to FDTextContainer"
        )
    }
}
