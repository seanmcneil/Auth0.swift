// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Auth0",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Auth0",
            targets: ["Auth0Dependencies"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(path: "../SimpleKeychain", .branch("dynamic")),
        .package(name: "JWTDecode", path: "../JWTDecode.swift", .branch("dynamic"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Auth0Dependencies", 
            dependencies: [
                "SimpleKeychain",
                "JWTDecode",
                .target(name: "Auth0")
            ], 
            path: "Package"), // Hack
        .binaryTarget(name: "Auth0", path: "Auth0.xcframework")
    ]
)
