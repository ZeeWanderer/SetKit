// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SetKit",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "SetKit",
            type: .static,
            targets: ["SetKit", "SnappySetKit"])
    ],
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit.git", .upToNextMajor(from: "5.0.1"))
    ],
    targets: [
        .target(
            name: "SetKitBase",
            path: "Classes/Base",
            swiftSettings: [.enableUpcomingFeature("StrictConcurrency")]
        ),
        .target(
            name: "SetKit",
            dependencies: ["SetKitBase"],
            path: "Classes/UIKit+PropertySetter",
            swiftSettings: [.enableUpcomingFeature("StrictConcurrency")]
        ),
        .target(
            name: "SnappySetKit",
            dependencies: ["SetKitBase", .product(name: "SnapKit", package: "SnapKit")],
            path: "Classes/SnapKit+PropertySetter",
            swiftSettings: [.enableUpcomingFeature("StrictConcurrency")]
        )
    ]
)
