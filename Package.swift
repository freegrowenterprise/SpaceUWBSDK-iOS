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
            url: "https://github.com/freegrowenterprise/SpaceUWBSDK-iOS/releases/download/v0.0.3/GrowSpaceUWBPrivateSDK.xcframework.zip",
            checksum: "844dadb9278f37645935fadac17d6d103e553a13501b07df4b00ece1c0bb7d53"
        ),
        .testTarget(
            name: "GrowSpaceUWBSDKTests",
            dependencies: ["GrowSpaceUWBSDK"]
        ),
    ]
)
