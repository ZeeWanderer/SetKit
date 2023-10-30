// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SetKit",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "SetKit",
            //type: .static,
            targets: ["SetKit"]),
    ],
    targets: [
        .target(
            name: "SetKit",
            path: "Classes",
            swiftSettings: [.enableUpcomingFeature("StrictConcurrency")]
        )
    ]
)
