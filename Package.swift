// swift-tools-version: 5.9
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
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.1/Adiscope.zip",
          checksum: "0ee2aaa12f0522457e8f3b5cb6c44c7159cbd58f8e53527919b415b9421d3d03"
        ),
    ]
)
