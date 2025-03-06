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
          path: "./Framework/Adiscope.xcframework"
        ),
    ]
)
