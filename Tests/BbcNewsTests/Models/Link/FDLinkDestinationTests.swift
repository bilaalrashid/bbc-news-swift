//
//  FDLinkDestinationTests.swift
//  BbcNewsTests
//
//  Created by Bilaal Rashid on 10/12/2023.
//

import XCTest
import BbcNews

final class FDLinkDestinationTests: XCTestCase {
    func testDecodeJson() throws {
        let decoder = JSONDecoder()
        let json = MockData.fdLinkDestination.json.data(using: .utf8)!

        XCTAssertEqual(
            try decoder.decode(FDLinkDestination.self, from: json),
            MockData.fdLinkDestination.expected,
            "Unable to decode JSON to FDLinkDestination"
        )
    }
}
