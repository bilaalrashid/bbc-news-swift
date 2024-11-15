# bbc-news-swift

![GitHub releases](https://img.shields.io/github/v/release/bilaalrashid/bbc-news-swift)
![Swift versions](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fbilaalrashid%2Fbbc-news-swift%2Fbadge%3Ftype%3Dswift-versions)
![Swift platforms](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fbilaalrashid%2Fbbc-news-swift%2Fbadge%3Ftype%3Dplatforms)
![Tests](https://github.com/bilaalrashid/bbc-news-swift/actions/workflows/swift.yml/badge.svg)
![Tests](https://github.com/bilaalrashid/bbc-news-swift/actions/workflows/openapi.yml/badge.svg)

A Swift client and [unofficial documentation](https://bilaalrashid.github.io/bbc-news-swift/) for the BBC News API.

This project is for educational and research purposes only.

## Installation

bbc-news-swift can be installed using [Swift Package Manager](https://www.swift.org/documentation/package-manager/) by adding the following
to your `Package.swift` file:
```
.package(url: "https://github.com/bilaalrashid/bbc-news-swift.git", .upToNextMajor(from: "1.1.2"))
```

## Usage

Full documentation is available on
[Swift Package Index](https://swiftpackageindex.com/bilaalrashid/bbc-news-swift/main/documentation/bbcnews/bbcnews).

### Fetching data

```swift
import BbcNews

let bbcNews = BbcNews(modelIdentifier: "iPhone15,2", systemName: "iOS", systemVersion: "17.0")

// Get results from the home page
let results = await bbcNews.fetchIndexDiscoveryPage(postcode: "W1A")

// Get results from a topic page
let results = await bbcNews.fetchTopicDiscoveryPage(for: "c50znx8v8y4t")

// Check if the network call was a success or not
switch result {
case .success(let result):
    // Parse story promo from a set of discovery results and fetch the full contents of that story
    for item in result.data.items {
        if case .storyPromo(let storyPromo) = item {
            let url = storyPromo.link.destinations[0].url 

            // Get the full contents of the story
            let story = await bbcNews.fetch(url: url)
        }
    }

case .failure(let error):
    print(error)
}
```

#### `Result` type

All methods have equivalents to support both the `Result` type and traditional `try`.
You can use the `try` equivalents by appending `Throwing` to the end of a method name. 

`Result`:
```swift
let result = await bbcNews.fetchIndexDiscoveryPage(postcode: "W1A")
switch result {
case .success(let results):
    print(results) // [...]

case .failure(let error):
    print(error)
}
```

`try`:
```swift
let results = try await bbcNews.fetchIndexDiscoveryPageThrowing(postcode: "W1A")
print(results) // [...]
```

### Utilities

```swift
import BbcNews

// Check if a URL is part of the BBC News API
BbcNews.isApiUrl(url: URL(string: "https://bbc.co.uk")!) // false

// Convert a webpage URL to a URL for the API
BbcNews.convertWebUrlToApi(url: URL(string: "https://www.bbc.com/news/articles/c289n8m4j19o")!) // https://news-app.api.bbc.co.uk/fd/app-article-api?clientName=Chrysalis&clientVersion=pre-7&page=https://www.bbc.com/news/articles/c289n8m4j19o
```

## Development

This project uses [SwiftLint](https://github.com/realm/SwiftLint) to enforce coding style.
You can check for any style violations and attempt to fix them using:

```
swiftlint --config .swiftlint.yml --strict [--fix]
```

The test suite uses local files in the tests resources bundle.
This causes tests to fail in Xcode, so tests must be run from the command line.

```
swift test
```

Full contributing guidelines can be found in [CONTRIBUTING.md](https://github.com/bilaalrashid/bbc-news-swift/blob/main/CONTRIBUTING.md).

## OpenAPI

Documentation of the API is defined using OpenAPI and automatically built using the CI (accessible at
https://bilaalrashid.github.io/bbc-news-swift).

These schema files can be linted using [Redocly](https://github.com/Redocly/redocly-cli):
```
redocly lint openapi/*/openapi.yaml
```

Changes to these files can be visualised by generating a pageset: 
```
redocly build-docs openapi/<version>/openapi.yaml
```

## Release

On the `main` branch:
1. Bump the tag and update the README
```
make release # Defaults to patch
make release-<major|minor|patch>
make release-version VERSION=<version>
```
2. Push to the remote
```
git push --follow-tags
```
3. Create a corresponding [release](https://github.com/bilaalrashid/bbc-news-swift/releases/new) on GitHub
