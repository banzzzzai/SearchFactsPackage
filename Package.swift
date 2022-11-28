// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftExamplePackage",
    platforms: [.iOS(.v13), .macOS(.v11)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SwiftExamplePackage",
            targets: ["SwiftExamplePackage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.6.2"),
        .package(url: "https://github.com/SnapKit/SnapKit", from: "5.6.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SwiftExamplePackage",
            dependencies: ["Alamofire", "SnapKit"],
            path: "Sources/SwiftExamplePackage",
            resources: [.process("SwiftExamplePackage")]),
        .testTarget(
            name: "SwiftExamplePackageTests",
            dependencies: ["SwiftExamplePackage"]),
    ]
)
