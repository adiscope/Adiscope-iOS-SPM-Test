// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Adiscope",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "Adiscope",
            targets: ["AdiscopeTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/adiscope/Adiscope-iOS-Pangle.git", exact: "0.0.1"),
    ],
    targets: [
        .target(
          name: "AdiscopeTarget",
          dependencies: [
            .target(name: "Adiscope"),
            .target(name: "AdiscopeMediaPangle"),
            .product(name: "AdiscopeWithPangle", package: "Adiscope-iOS-Pangle"),
          ],
          path: "Sources"
        ),
        .binaryTarget(
          name: "Adiscope",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.17/Adiscope.xcframework.zip",
          checksum: "87db5fff5a34db747ff980bac344a92ec8483297b9264838ec076eb4bfcf13ee"
        ),
        .binaryTarget(
          name: "AdiscopeMediaPangle",
          url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.18/AdiscopeMediaPangle.xcframework.zip",
          checksum: "2fdfe52f0158913d0d9e49f69daf3bcaf0dafb1b381a791caa3da29436d4f160"
        ),
    ]
)
