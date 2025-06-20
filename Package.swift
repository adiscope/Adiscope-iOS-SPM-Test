// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Adiscope",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "Adiscope",
            targets: ["Adiscope"]),
    ],
    targets: [
        .binaryTarget(
          name: "Adiscope",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.2/Adiscope.zip",
          checksum: "4caa360b11194dfbd97f722c79ebc5e67c8752126288827e34ab132bc99588b0"
        ),
    ]
)
