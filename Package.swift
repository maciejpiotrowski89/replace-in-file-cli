// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "replace-in-file-cli",
    products: [
        .executable(name: "replace", targets: ["replace"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", from: "0.3.1"),
    ],
    targets: [
        .target(name: "replace", dependencies: [
            .product(name: "ArgumentParser", package: "swift-argument-parser"),
        ]),
    ]
)
