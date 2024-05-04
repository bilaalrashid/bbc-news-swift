//
//  SchemaTests.swift
//  BbcNewsTests
//
//  Created by Bilaal Rashid on 04/05/2024.
//

import XCTest
@testable import BbcNews

final class SchemaTests: XCTestCase {
    func testStory() throws {
        XCTAssertNoThrow(try self.decode(FDResult.self, file: "IndexDiscovery"))
        XCTAssertNoThrow(try self.decode(FDResult.self, file: "Topic"))
        XCTAssertNoThrow(try self.decode(FDResult.self, file: "Story"))
    }

    private func decode<T: Decodable>(_ type: T.Type, file: String) throws -> T {
        guard let url = Bundle.module.url(forResource: file, withExtension: "json") else {
            fatalError("Failed to locate \(file) in bundle.")
        }

        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }

        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .deferredToDate
        decoder.keyDecodingStrategy = .useDefaultKeys

        return try decoder.decode(T.self, from: data)
    }
}
