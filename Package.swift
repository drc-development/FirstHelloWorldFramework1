// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FirstHelloWorldFramework1",
//  platforms: [
//      .iOS(.v16),
//      .macOS(.v13),
//      .tvOS(.v16),
//      .watchOS(.v9)
//  ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "FirstHelloWorldFramework1",
            targets: ["FirstHelloWorldFramework1"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "FirstHelloWorldFramework1",
            dependencies: [],
            path: "FirstHelloWorldFramework1",
        //  sources: ["Path1", "Path2", "SpecificSource.swift"],
            ),
        .testTarget(
            name: "FirstHelloWorldFramework1Tests",
            dependencies: ["FirstHelloWorldFramework1"],
            path: "FirstHelloWorldFramework1Tests",
            ),
    ],
    swiftLanguageVersions: [.v5]
)

