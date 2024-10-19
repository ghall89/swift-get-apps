#  swift-get-apps

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

let allApps = getInstalledApps() 
```

### Get Only User-Installed Apps

```
import GetApps

let userApps = getInstalledApps(ignoreSystemApps: true)
```
