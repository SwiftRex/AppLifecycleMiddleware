// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

// swiftlint:disable all

import PackageDescription

let package = Package(
    name: "AppLifecycleMiddleware",
    // TODO: Review version requirements
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13),
        .tvOS(.v13),
        .watchOS(.v6),
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AppLifecycleMiddleware",
            targets: ["AppLifecycleMiddleware"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/SwiftRex/SwiftRex.git", from: "0.7.4"),
//        .package(url: "https://github.com/nicklockwood/SwiftFormat", from: "0.46.3"),
//        .package(url: "https://github.com/Realm/SwiftLint", from: "0.40.3"),
//        .package(url: "https://github.com/orta/Komondor", from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "AppLifecycleMiddleware",
            dependencies: [.product(name: "CombineRex", package: "SwiftRex")]
        ),
        .testTarget(
            name: "AppLifecycleMiddlewareTests",
            dependencies: ["AppLifecycleMiddleware"]
        ),
    ]
)

// The settings for the git hooks for our repo
//#if canImport(PackageConfig)
//    import PackageConfig
//
//    PackageConfiguration([
//        "komondor": [
//            // When someone has run `git commit`, first run
//            // SwiftFormat and the auto-correcter for SwiftLint
//            "pre-commit": [
//                "swift run swiftformat .",
//                "swift run swiftlint autocorrect",
//            ],
//        ],
//    ])
//        .write()
//#endif
