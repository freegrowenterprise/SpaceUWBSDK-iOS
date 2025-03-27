// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GrowSpaceUWBSDK",
    platforms: [
        .iOS(.v16)
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
            url: "https://github.com/freegrowenterprise/SpaceUWBSDK-iOS/releases/download/v0.0.1/GrowSpaceUWBPrivateSDK.xcframework.zip",
            checksum: "93fb73d1c150785ee3eeb24fc7f8ad463301b8cb0bd8fbe5cafc6e831d61c7cc"
        ),
        .testTarget(
            name: "GrowSpaceUWBSDKTests",
            dependencies: ["GrowSpaceUWBSDK"]
        ),
    ]
)
