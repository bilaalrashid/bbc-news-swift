//
//  FDCallToActionButton.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 27/05/2024.
//

import Foundation

/// A button in a call to action banner.
public struct FDCallToActionButton: Codable, Equatable, Hashable {
    /// The title of the button.
    public var title: String

    /// The link that the button directs the user to.
    public var link: FDLink
}
