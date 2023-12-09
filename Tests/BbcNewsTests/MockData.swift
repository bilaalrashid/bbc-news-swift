//
//  MockData.swift
//  BbcNewsTests
//
//  Created by Bilaal Rashid on 09/12/2023.
//

import Foundation
@testable import BbcNews

struct MockData {
    static let fdDataMetadata: (json: String, expected: FDDataMetadata) = {
        return (
            json: """
                {
                    "name": "Home",
                    "allowAdvertising": true,
                    "lastUpdated": 1702078376217,
                    "shareUrl": "https://www.bbc.co.uk/news/front_page"
                }
            """,
            expected: FDDataMetadata(
                name: "Home",
                allowAdvertising: true,
                lastUpdated: 1702078376217,
                shareUrl: "https://www.bbc.co.uk/news/front_page"
            )
        )
    }()
}
