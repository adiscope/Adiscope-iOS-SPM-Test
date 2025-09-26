// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Adiscope",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "Adiscope",
            targets: ["AdiscopeTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "12.2.0"),
        .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager.git", exact: "7.4.4"),
        .package(url: "https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package.git", exact: "7.7.7"),
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.1.0"),
        .package(url: "https://github.com/adiscope/Adiscope-iOS-Pangle.git", exact: "4.2.1"),
        .package(url: "https://github.com/adiscope/Adiscope-iOS-ChartBoost.git", exact: "4.3.0")
    ],
    targets: [
        .target(
            name: "AdiscopeTarget",
            dependencies: [
                .target(name: "Adiscope"),
                .target(name: "AdiscopeMediaAdManager"),
                .target(name: "AdiscopeMediaAdMob"),
                .target(name: "AdiscopeMediaChartBoost"),
                .target(name: "AdiscopeMediaMax"),
                .target(name: "AdiscopeMediaMaxAdapterAdManager"),
                .target(name: "AdiscopeMediaMaxAdapterAdMob"),
                .target(name: "AdiscopeMediaMaxAdapterAmazon"),
                .target(name: "AdiscopeMediaMaxAdapterBidMachine"),
                .target(name: "AdiscopeMediaMaxAdapterChartBoost"),
                .target(name: "AdiscopeMediaMaxAdapterDTExchange"),
                .target(name: "AdiscopeMediaMaxAdapterInMobi"),
                .target(name: "AdiscopeMediaMaxAdapterIronSource"),
                .target(name: "AdiscopeMediaMaxAdapterMobVista"),
                .target(name: "AdiscopeMediaMaxAdapterMoloco"),
                .target(name: "AdiscopeMediaMaxAdapterPangle"),
                .target(name: "AdiscopeMediaMaxAdapterUnityAds"),
                .target(name: "AdiscopeMediaMaxAdapterVungle"),
                .target(name: "AdiscopeMediaPangle"),
                .target(name: "AdiscopeMediaVungle"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                .product(name: "MintegralAdSDK", package: "MintegralAdSDK-Swift-Package"),
                .product(name: "VungleAdsSDK", package: "VungleAdsSDK-SwiftPackageManager"),
                .product(name: "AdiscopeWithPangle", package: "Adiscope-iOS-Pangle"),
                .product(name: "AdiscopeWithChartBoost", package: "Adiscope-iOS-ChartBoost"),
                .target(name: "BidMachine"),
                .target(name: "DTBiOSSDK"),
                .target(name: "IASDKCore"),
                .target(name: "InMobiSDK"),
                .target(name: "IronSource"),
                .target(name: "LiftoffMonetizeAdapter"),
                .target(name: "MintegralAdapter"),
                .target(name: "MolocoSDK"),
                .target(name: "OMSDK_Appodeal"),
                .target(name: "PangleAdapter"),
                .target(name: "StackModules"),
                .target(name: "StackProductPresentation"),
                .target(name: "StackRendering"),
                .target(name: "UnityAds"),
                .target(name: "TnkRwdSdk2"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "Adiscope",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/Adiscope.zip",
            checksum: "720b5c059514ce35ff1b0f0db7436f113197a675e64224cc60fdeab1f5932547"
        ),
        .binaryTarget(
            name: "AdiscopeMediaAdManager",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/AdiscopeMediaAdManager.zip",
            checksum: "18e43dd058ca57fbf92cdac80005b5dde6bc29276a127eb2f6852eb64bf4244c"
        ),
        .binaryTarget(
            name: "AdiscopeMediaAdMob",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/AdiscopeMediaAdMob.zip",
            checksum: "3e3c1c58c10b5ff40318e2cdc04d6fd3a9cf16fcf8712808e4000288d11a8248"
        ),
        .binaryTarget(
            name: "AdiscopeMediaChartBoost",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/AdiscopeMediaChartBoost.zip",
            checksum: "e767f493d13ed47bf002c6f672892750851791dc7e293df7e3fc5bcc3eff3516"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMax",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/AdiscopeMediaMax.zip",
            checksum: "156b2bd63bbbeb7721487ce7b5c354cff23aeed87ef0347669f75cd33391bfc6"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAdManager",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/AdiscopeMediaMaxAdapterAdManager.zip",
            checksum: "152e1a3c180caa7ff15e3b0cd2bb7a7bfc8f1caf15c961bc6ee954176b66e5b3"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAdMob",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/AdiscopeMediaMaxAdapterAdMob.zip",
            checksum: "0375a5b5e278dceb3f08f64c3c9e2c623f352e313e59e841a93a477daefa734d"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAmazon",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/AdiscopeMediaMaxAdapterAmazon.zip",
            checksum: "eb1becf20f3d386e5d5986a20570fbb61d02cab8c18854da0781e9e73bf74bd7"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterBidMachine",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/AdiscopeMediaMaxAdapterBidMachine.zip",
            checksum: "b32cea74013929aa9599aaf52e57c20660118efb60ca2cf9d3c0b3035c9b9d45"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterChartBoost",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/AdiscopeMediaMaxAdapterChartBoost.zip",
            checksum: "d1ced248e0aae2d94fdd27619408f35e79509a32a4ab40650a602b57dadc0262"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterDTExchange",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/AdiscopeMediaMaxAdapterDTExchange.zip",
            checksum: "4f745bc7f9763a8faf4bde118bbc38ad54f14a1935d87a46f822cf68f1c56f0d"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterInMobi",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/AdiscopeMediaMaxAdapterInMobi.zip",
            checksum: "a3ac138b1259b65b4d5c3d928cc169a0eb29d44579815c3fd393bfc6b2a959bf"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterIronSource",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/AdiscopeMediaMaxAdapterIronSource.zip",
            checksum: "196cea714be692f17c232735668413e9210c4620c543d37a494f22e6fe2f38cb"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterMobVista",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/AdiscopeMediaMaxAdapterMobVista.zip",
            checksum: "60f3988a0a37deb989f45e3d7ece4743ed99f4abb149ad78121e4cf42bc540f7"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterMoloco",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/AdiscopeMediaMaxAdapterMoloco.zip",
            checksum: "d42b39d53a4cf3d2395de8940cf69ddb345ab48808f389d16a777302e769b478"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterPangle",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/AdiscopeMediaMaxAdapterPangle.zip",
            checksum: "d204d53c563374c53637523acee97d830162d8f8c57675b1258b78e6856cbedf"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterUnityAds",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/AdiscopeMediaMaxAdapterUnityAds.zip",
            checksum: "a86832423e06bcf000cdf258ce2478b4fd6328a3bab5bf8c020cd10699cfdbdb"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterVungle",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/AdiscopeMediaMaxAdapterVungle.zip",
            checksum: "282c481ed54590f48cd4869b5508fbb0a94afab2a91725e2950ea3ee220e7058"
        ),
        .binaryTarget(
            name: "AdiscopeMediaPangle",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/AdiscopeMediaPangle.zip",
            checksum: "cfac71b13e9fc41aa5f5ca19c8032d14f477bdb8ffbf9326634b4fdcce8c7c6d"
        ),
        .binaryTarget(
            name: "AdiscopeMediaVungle",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/AdiscopeMediaVungle.zip",
            checksum: "cfa9b1ed7c0658ac59fd52757e71b01eba766bd5be14ab678e50a43b41773512"
        ),
        .binaryTarget(
            name: "BidMachine",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/BidMachine.xcframework.zip",
            checksum: "c4cedc48be5f1ff7ae8d2a6294b9c2908b35149710f83582419a34bffb063894"
        ),
        .binaryTarget(
            name: "DTBiOSSDK",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/DTBiOSSDK.xcframework.zip",
            checksum: "160468024830b2b6173e5eb0cabf850ce90207a4215066467ad8803bb66eaa98"
        ),
        .binaryTarget(
            name: "IASDKCore",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/IASDKCore.xcframework.zip",
            checksum: "85d11954350be3f4ca9feefa3b6dc101c293f9224eda254b4c0b54f647ad5516"
        ),
        .binaryTarget(
            name: "InMobiSDK",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/InMobiSDK.xcframework.zip",
            checksum: "1ae7fddf044a611db538c279982659c663ca7d1fb4706e3e076d007778fb8b2d"
        ),
        .binaryTarget(
            name: "IronSource",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/IronSource.xcframework.zip",
            checksum: "9120c88836ebc271f208c6a8bea708bbe7efb633e4bb800b741444986dbca0a6"
        ),
        .binaryTarget(
            name: "LiftoffMonetizeAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/LiftoffMonetizeAdapter.xcframework.zip",
            checksum: "c1ffac2aa0b2cae8ba95a728a5021a595560bd778feb5f677e7b428006df7f95"
        ),
        .binaryTarget(
            name: "MintegralAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/MintegralAdapter.xcframework.zip",
            checksum: "fcaf1162b25f13d7702e32c275a982cf351fe08f03ae1d2cdd439785450c76c2"
        ),
        .binaryTarget(
            name: "MolocoSDK",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/MolocoSDK.xcframework.zip",
            checksum: "764bb21a59487831ec167e813150c3b2aeb6256c73aea84dc60eac754d7d91b3"
        ),
        .binaryTarget(
            name: "OMSDK_Appodeal",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/OMSDK_Appodeal.xcframework.zip",
            checksum: "84df6f8ffd5d27ef068482458b4c02000030888f6a87b97bac2adafa48c7e880"
        ),
        .binaryTarget(
            name: "PangleAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/PangleAdapter.xcframework.zip",
            checksum: "1be26ec128709635a34fde68a09f582ae2c4cc01dab5b16a23bc429c158687f9"
        ),
        .binaryTarget(
            name: "StackModules",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/StackModules.xcframework.zip",
            checksum: "4315dff8b4c376fd0302c61248e217053aa163f0b5f0bf8309ae6aaa859b6cb2"
        ),
        .binaryTarget(
            name: "StackProductPresentation",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/StackProductPresentation.xcframework.zip",
            checksum: "5eb0aebb302ed857947d0d8809c3daf681fedb21fec2fdcb5f210e3f82a709c7"
        ),
        .binaryTarget(
            name: "StackRendering",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/StackRendering.xcframework.zip",
            checksum: "acab8a992dae0aae30f20fbfb0a3372672a3efce0419fd9e42fc92d26c192ff4"
        ),
        .binaryTarget(
            name: "UnityAds",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/UnityAds.xcframework.zip",
            checksum: "661cd64f557434fd17310bc091c3707ac3911a7c3adcbd4debd83596fd580961"
        ),
        .binaryTarget(
            name: "TnkRwdSdk2",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.11/TnkRwdSdk2.v.5.73.zip",
            checksum: "a98ef1ba9af1c5cb06b88cc0968f8f80407d36320707db7d6ff8d7cf6e847947"
        ),
    ]
)
