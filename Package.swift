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
          url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/Adiscope.zip",
          checksum: "d7437e212d7f79534818bee9ec139a663dbbcec9e0c2013d89c8ac6c5ae31ec8"
        ),
    ]
)
