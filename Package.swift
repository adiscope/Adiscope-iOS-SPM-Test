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
            dependencies: ["Adiscope"]
        ),
        .binaryTarget(
          name: "Adiscope",
          url: "https://github.com/adiscope/Adiscope-iOS-SPM-Test/releases/download/0.0.6/Adiscope.xcframework.zip",
          checksum: "2fa896d87168b70edc8edfb4a53a8f1771cda997a5d75a6135f260d5fbaf13f4"
        ),
    ]
)
