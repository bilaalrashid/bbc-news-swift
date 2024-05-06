# bbc-news-swift

![Tests](https://github.com/bilaalrashid/BbcNewsSwift/actions/workflows/lint.yml/badge.svg)
![Tests](https://github.com/bilaalrashid/BbcNewsSwift/actions/workflows/test.yml/badge.svg)

A Swift API client for the BBC News API.

## Linting

This project uses SwiftLint to enforce coding style.

You can check for any style violations using:

```
swiftlint --config .swiftlint.yml --strict
```

You can attempt to fix any violations using:

```
swiftlint --config .swiftlint.yml --strict --fix
```

## Testing

The test suite uses local files in the tests resources bundle. This causes tests to fail in Xcode, so tests must be run from the command line.

```
swift test
```
