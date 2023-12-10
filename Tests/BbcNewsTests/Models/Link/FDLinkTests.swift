//
//  FDLinkTests.swift
//  BbcNewsTests
//
//  Created by Bilaal Rashid on 10/12/2023.
//

import XCTest
import BbcNews

final class FDLinkTests: XCTestCase {
    func testDecodeJson() throws {
        let decoder = JSONDecoder()
        let json = MockData.fdLink.json.data(using: .utf8)!

        XCTAssertEqual(
            try decoder.decode(FDLink.self, from: json),
            MockData.fdLink.expected,
            "Unable to decode JSON to FDLink"
        )
    }
}
