//
//  FDCollection.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 01/11/2023.
//

import Foundation

extension Components.Schemas {
    /// A generic collection of story promos.
    ///
    /// This has been generated separate to swift-openapi-generator codegen.
    public protocol FDCollection {
        var storyPromos: [Components.Schemas.FDStoryPromo] { get }
    }
}

// Conform FDBillboard to FDCollection.
// This has been generated separate to swift-openapi-generator codegen.
extension Components.Schemas.FDBillboard: Components.Schemas.FDCollection {
    /// A symlink to `items` as swift-openapi-generator does not support property renaming.
    ///
    /// This has been generated separate to swift-openapi-generator codegen.
    public var storyPromos: [Components.Schemas.FDStoryPromo] {
        return self.items
    }
}

// Conform FDCarousel to FDCollection.
// This has been generated separate to swift-openapi-generator codegen.
extension Components.Schemas.FDCarousel: Components.Schemas.FDCollection {
    /// A symlink to `items` as swift-openapi-generator does not support property renaming.
    ///
    /// This has been generated separate to swift-openapi-generator codegen.
    public var storyPromos: [Components.Schemas.FDStoryPromo] {
        return self.items
    }
}

// Conform FDHierarchicalCollection to FDCollection.
// This has been generated separate to swift-openapi-generator codegen.
extension Components.Schemas.FDHierarchicalCollection: Components.Schemas.FDCollection {
    /// A symlink to `items` as swift-openapi-generator does not support property renaming.
    ///
    /// This has been generated separate to swift-openapi-generator codegen.
    public var storyPromos: [Components.Schemas.FDStoryPromo] {
        return self.items
    }
}

// Conform FDSimpleCollection to FDCollection.
// This has been generated separate to swift-openapi-generator codegen.
extension Components.Schemas.FDSimpleCollection: Components.Schemas.FDCollection {
    /// A symlink to `items` as swift-openapi-generator does not support property renaming.
    ///
    /// This has been generated separate to swift-openapi-generator codegen.
    public var storyPromos: [Components.Schemas.FDStoryPromo] {
        return self.items
    }
}

// Conform FDSimplePromoGrid to FDCollection.
// This has been generated separate to swift-openapi-generator codegen.
extension Components.Schemas.FDSimplePromoGrid: Components.Schemas.FDCollection {
    /// A symlink to `items` as swift-openapi-generator does not support property renaming.
    ///
    /// This has been generated separate to swift-openapi-generator codegen.
    public var storyPromos: [Components.Schemas.FDStoryPromo] {
        return self.items
    }
}
