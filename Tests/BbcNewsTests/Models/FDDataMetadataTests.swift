//
//  FDDataMetadataTests.swift
//  BbcNewsTests
//
//  Created by Bilaal Rashid on 08/12/2023.
//

import XCTest
import BbcNews

final class FDDataMetadataTests: XCTestCase {
    func testDecodeJson() throws {
        let decoder = JSONDecoder()
        let json = MockData.fdDataMetadata.json.data(using: .utf8)!

        XCTAssertEqual(
            try decoder.decode(FDDataMetadata.self, from: json),
            MockData.fdDataMetadata.expected,
            "Unable to decode JSON to FDDataMetadata"
        )
    }
}
