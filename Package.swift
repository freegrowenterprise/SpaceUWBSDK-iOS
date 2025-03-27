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
            url: "https://github.com/freegrowenterprise/SpaceUWBSDK-iOS/releases/download/v0.0.7/GrowSpaceUWBPrivateSDK.xcframework.zip",
            checksum: "7ccf84e362ed7a3f03c8e3bba7d969d4af0f0088cbb30eb7afc7c721aba99184"
        ),
        .testTarget(
            name: "GrowSpaceUWBSDKTests",
            dependencies: ["GrowSpaceUWBSDK"]
        ),
    ]
)
