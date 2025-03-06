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
          url: "https://github.com/adiscope/Adiscope-iOS-SPM-Test/releases/download/0.0.6/Adiscope.xcframework.zip",
          checksum: "2fa896d87168b70edc8edfb4a53a8f1771cda997a5d75a6135f260d5fbaf13f4"
        ),
    ]
)
