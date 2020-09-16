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
            targets: ["Auth0"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(path: "../SimpleKeychain"),
        .package(name: "JWTDecode", path: "../JWTDecode.swift")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.ack
        .binaryTarget(name: "Auth0", path: "Auth0.xcframework")
    ]
)
