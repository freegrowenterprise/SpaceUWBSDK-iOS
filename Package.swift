// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GrowSpaceUWBSDK",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "GrowSpaceUWBSDK",
            targets: ["GrowSpaceUWBSDK"]),
    ],
    dependencies: [],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "GrowSpaceUWBSDK",
            dependencies: ["GrowSpaceUWBPrivateSDK"]
        ),
        
        .binaryTarget(
            name: "GrowSpaceUWBPrivateSDK",
            url: "https://github.com/freegrowenterprise/SpaceUWBSDK-iOS/releases/download/v0.0.6/GrowSpaceUWBPrivateSDK.xcframework.zip",
            checksum: "c6d59c5cf2f1ddc59222f49929f4a346f3b97a1c3420d67ac81573da054b0386"
        ),
        .testTarget(
            name: "GrowSpaceUWBSDKTests",
            dependencies: ["GrowSpaceUWBSDK"]
        ),
    ]
)
