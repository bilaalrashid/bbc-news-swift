# BbcNewsSwift

![Tests](https://github.com/bilaalrashid/BbcNewsSwift/actions/workflows/lint.yml/badge.svg)
![Tests](https://github.com/bilaalrashid/BbcNewsSwift/actions/workflows/test.yml/badge.svg)

A Swift API client for the BBC News API.

## Linting

```
swiftlint --config .swiftlint.yml --strict
```

## Testing

The test suite uses local files in the tests resources bundle. This causes tests to fail in Xcode, so tests must be run from the command line.

```
swift test
```
