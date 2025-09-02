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
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.8/Adiscope.zip",
          checksum: "5a7a01bb62365395d3aef5f8edca304f34b16711ae5ab8394f0f5acbef49a704"
        ),
    ]
)
