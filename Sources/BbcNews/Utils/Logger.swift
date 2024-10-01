//
//  Logger.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 07/12/2023.
//

#if canImport(OSLog)
import OSLog

extension Logger {
    /// The Unified Logging subsystem name
    private static let subsystem = "BbcNews"

    /// Logging related to networking
    static let network = Logger(subsystem: Logger.subsystem, category: "network")
}
#endif
