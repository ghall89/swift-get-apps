#  swift-get-apps

![GitHub License](https://img.shields.io/github/license/ghall89/swift-get-apps) ![GitHub Release](https://img.shields.io/github/v/release/ghall89/swift-get-apps) [![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fghall89%2Fswift-get-apps%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/ghall89/swift-get-apps) [![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fghall89%2Fswift-get-apps%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/ghall89/swift-get-apps)

A Swift package for retrieving a list of apps on a user's device, including name, bundle identifier, and icon.

## Installation

### SwiftPM
`.package(url: "https://github.com/ghall89/swift-get-apps.git", from: "main")`

## Usage

The `getInstalledApps()` function returns an array of installed apps using the following data struct that conforms to identifiable and hashable:

```
struct InstalledApp

id: UUID
location: URL
bundleId: String
name: String
icon: NSImage?
```

## Examples

### Get All Apps

```
import GetApps

let allApps = getAllApps()
```

### Get Only User-Installed Apps

```
import GetApps

let userApps = getUserApps()
```
