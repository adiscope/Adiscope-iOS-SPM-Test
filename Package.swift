// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Adiscope",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "Adiscope",
            targets: ["Adiscope"]),
    ],
    targets: [
        .binaryTarget(
          name: "Adiscope",
          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.0.0/Adiscope.zip",
          checksum: "63c80177c5e461c3d89e812ebf2a43bb80c90d4d1cd357a144d4e09f2feec613"
        ),
    ]
)
