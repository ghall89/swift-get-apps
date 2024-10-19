// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "GetApps",
		platforms: [.macOS("11.0")],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "GetApps",
            targets: ["GetApps"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "GetApps"),
        .testTarget(
            name: "swift-get-appsTests",
            dependencies: ["GetApps"]
        ),
    ]
)
