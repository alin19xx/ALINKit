// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ALINKit",
    platforms: [
        .iOS(.v13), .macOS(.v12)
    ],
    products: [
        .library(
            name: "ALINKitLogger",
            targets: ["ALINKitLogger"]
        ),
    ],
    targets: [
        .target(
            name: "ALINKitLogger",
            path: "Sources/Utils/Logger"
        ),
        .testTarget(
            name: "LoggerTests",
            dependencies: ["ALINKitLogger"],
            path: "Tests/ALINKitTests"
        ),
    ]
)
