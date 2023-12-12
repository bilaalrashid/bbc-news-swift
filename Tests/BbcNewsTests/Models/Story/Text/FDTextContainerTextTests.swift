//
//  FDTextContainerTextTests.swift
//  BbcNewsTests
//
//  Created by Bilaal Rashid on 12/12/2023.
//

import XCTest
import BbcNews

final class FDTextContainerTextTests: XCTestCase {
    func testDecodeJson() throws {
        let decoder = JSONDecoder()
        let json = MockData.fdTextContainerText.json.data(using: .utf8)!

        XCTAssertEqual(
            try decoder.decode(FDTextContainerText.self, from: json),
            MockData.fdTextContainerText.expected,
            "Unable to decode JSON to FDTextContainerText"
        )
    }
}
