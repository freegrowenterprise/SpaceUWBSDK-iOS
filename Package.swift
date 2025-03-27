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
            url: "https://github.com/freegrowenterprise/SpaceUWBSDK-iOS/releases/download/v0.0.2/GrowSpaceUWBPrivateSDK.xcframework.zip",
            checksum: "ebbb7cf1567016a7509939edca0e525e5298a18973d4c55de15b60fc0461a354"
        ),
        .testTarget(
            name: "GrowSpaceUWBSDKTests",
            dependencies: ["GrowSpaceUWBSDK"]
        ),
    ]
)
