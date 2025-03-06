// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Adiscope",
    platforms: [.iOS(.v12)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Adiscope",
            type: .dynamic,
            targets: ["AdiscopeTarget"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "AdiscopeTarget",
            path: "Sources/Adiscope-iOS-SPM-T"
        ),
        .binaryTarget(
          name: "Adiscope",
          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.0.0/Adiscope.zip",
          checksum: "63c80177c5e461c3d89e812ebf2a43bb80c90d4d1cd357a144d4e09f2feec613"
        ),
    ]
)
