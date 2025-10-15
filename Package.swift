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
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "12.11.0"),
        .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager.git", exact: "7.5.2"),
        .package(url: "https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package.git", exact: "7.7.9"),
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.4.0"),
        .package(url: "https://github.com/bytedance/AdsGlobalPackage.git", exact: "7.4.1-release.1"),
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
                .target(name: "AdiscopeMediaMaxAdapterBidMachineMediationAdapter"),
                .target(name: "AdiscopeMediaMaxAdapterPangleMediationAdapter"),
                .target(name: "AdiscopeMediaMaxAdapterChartboostMediationAdapter"),
                .target(name: "AdiscopeMediaMaxAdapterAdManagerMediationAdapter"),
                .target(name: "AdiscopeMediaMaxAdapterAdMobMediationAdapter"),
                .target(name: "AdiscopeMediaMaxAdapterIronSourceMediationAdapter"),
                .target(name: "AdiscopeMediaMaxAdapterMolocoMediationAdapter"),
                .target(name: "AdiscopeMediaMaxAdapterUnityAdsMediationAdapter"),
                .target(name: "AdiscopeMediaMaxAdapterVungleMediationAdapter"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                .product(name: "MintegralAdSDK", package: "MintegralAdSDK-Swift-Package"),
                .product(name: "VungleAdsSDK", package: "VungleAdsSDK-SwiftPackageManager"),
                .product(name: "AdsGlobalPackage", package: "AdsGlobalPackage"),
                .target(name: "BidMachine"),
                .target(name: "ChartBoost"),
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
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "Adiscope",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/Adiscope.zip",
            checksum: "ef956c24d22abe517aaa81be1cec4b15f429fc87a9888e14845f463bd34cb1b6"
        ),
        .binaryTarget(
            name: "AdiscopeMediaAdManager",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/AdiscopeMediaAdManager.zip",
            checksum: "a66fa53abc468ec05cb565f8a9c7bc9d64b8141b7fd7fd068038988356e4867b"
        ),
        .binaryTarget(
            name: "AdiscopeMediaAdMob",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/AdiscopeMediaAdMob.zip",
            checksum: "24918a884cd86eab873e09ea216d9a7ae031c0e414c18879f230e8de0e96a371"
        ),
        .binaryTarget(
            name: "AdiscopeMediaChartBoost",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/AdiscopeMediaChartBoost.zip",
            checksum: "50fd4618f2230c4966028d01c737c83455c54995545122f19abc52c8e3f7dd71"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMax",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/AdiscopeMediaMax.zip",
            checksum: "9cc2c55844f33a9440aaca39ce10beea572d099d338807355b4037db76fc8b6f"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAdManager",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/AdiscopeMediaMaxAdapterAdManager.zip",
            checksum: "bb7c74d0e5c28acf0652321e6f8f9099b0138cbef294f5ef5e0b3cab99f8a1b7"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAdMob",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/AdiscopeMediaMaxAdapterAdMob.zip",
            checksum: "198d1ad154b2d1872616b4fb37cbd4b3e394dda0843d08457626388309b18e41"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAmazon",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/AdiscopeMediaMaxAdapterAmazon.zip",
            checksum: "96ad6a1687cbd3aeb51c970f2124104ee3bc3d99a5e4186ca289a37f08dfc238"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterBidMachine",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/AdiscopeMediaMaxAdapterBidMachine.zip",
            checksum: "8a9b68fef8fca48eedd9283da1e78572876e714b3da3947c55794d57b7c38f40"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterChartBoost",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/AdiscopeMediaMaxAdapterChartBoost.zip",
            checksum: "7c8e774db725d9fb5cd7c6ce3cd7861b046a7284dac84731fcf0267d29a54a3d"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterDTExchange",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/AdiscopeMediaMaxAdapterDTExchange.zip",
            checksum: "1c78a0425691e81166a832399a9f47cb9d0ab2da9a669dfd27a88feb81786823"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterInMobi",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/AdiscopeMediaMaxAdapterInMobi.zip",
            checksum: "c88be04a08149e0c011cc1a2882bc05813266db7a9eaa56030e6c5045a612dd0"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterIronSource",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/AdiscopeMediaMaxAdapterIronSource.zip",
            checksum: "1e7e8c544a61cf73562295cc2469f3a6b2cbcb3b860abaa81b041bf0d1036afe"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterMobVista",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/AdiscopeMediaMaxAdapterMobVista.zip",
            checksum: "633c9440d85b75c74fca3ecc770cad5368eb6a670a94817ce79cac56b8554985"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterMoloco",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/AdiscopeMediaMaxAdapterMoloco.zip",
            checksum: "21cc13e042264ee157e8ed9a1159dae7a28977af4dcb50645c66214823088886"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterPangle",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/AdiscopeMediaMaxAdapterPangle.zip",
            checksum: "01823c01aff99c0b2e354c5739f1b60a4458b8ba160fa7bca8a0641ead469cb4"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterUnityAds",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/AdiscopeMediaMaxAdapterUnityAds.zip",
            checksum: "a9b512db4e1d61ef53c94ba52c3ea5f2323e04cd93c48b7ceff988925fbd116c"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterVungle",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/AdiscopeMediaMaxAdapterVungle.zip",
            checksum: "b86de6f238a43b0c6aa8ab610e3fc197d02ffec620fe10004b8ade5e531de107"
        ),
        .binaryTarget(
            name: "AdiscopeMediaPangle",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/AdiscopeMediaPangle.zip",
            checksum: "0ae8d3914a246ee4a67c76e1151f7cb38c85a96a5c5552c3ae60c57227429ebf"
        ),
        .binaryTarget(
            name: "AdiscopeMediaVungle",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/AdiscopeMediaVungle.zip",
            checksum: "984f4b4c470d3dfa30363f41d3ce5ad0958e4780475656f7640e39884dbb88c4"
        ),
        .binaryTarget(
            name: "AppLovinMediationAmazonAdMarketplaceAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/AppLovinMediationAmazonAdMarketplaceAdapter.xcframework.zip",
            checksum: "03978a302660050771ef9a31ec6c31c8259d81b5aff1836a01003493d0124e3f"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterBidMachineMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/AppLovinMediationBidMachineAdapter.xcframework.zip",
            checksum: "b63c24ecdda4e014727683436f8672c457afbe1b72185491f97fb97b130cf2c7"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterPangleMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/AppLovinMediationByteDanceAdapter.xcframework.zip",
            checksum: "bc75fa474314ed166aea9bfcc118d3abcdce4da24d213161eae97393a9f5c8a6"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterChartboostMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/AppLovinMediationChartboostAdapter.xcframework.zip",
            checksum: "5517e9b527fe1d33e4ba7303319a09804b1245f1311c81e609df9a6daaa39010"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAdMobMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/AppLovinMediationGoogleAdapter.xcframework.zip",
            checksum: "00a4a083a8fa9a244f7672acc1155280fab8812a78c98989f3ccabfeb290a090"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAdManagerMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/AppLovinMediationGoogleAdManagerAdapter.xcframework.zip",
            checksum: "1e249cfd30ed969d1ffee90d6d4bb24d34aaaeb78889cca39512fb15bd946a93"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterIronSourceMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/AppLovinMediationIronSourceAdapter.xcframework.zip",
            checksum: "e55967e994a2721f8f7a9e381d5076ea10a798d1c08e26dc4f68055f5ea160c8"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterMolocoMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/AppLovinMediationMolocoAdapter.xcframework.zip",
            checksum: "411507ea89e5abb59e19b2b1573a086097454113c84f1c8e37026b250c166351"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterUnityAdsMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/AppLovinMediationUnityAdsAdapter.xcframework.zip",
            checksum: "ff56c690e7f78080403a7c5e23754d25507245d71b25e0dede5a00d03fec9e67"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterVungleMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/AppLovinMediationVungleAdapter.xcframework.zip",
            checksum: "db857f31a04693033c61d8e202b62c5f3c7a0976e9a1f24b45053820e974f532"
        ),
        .binaryTarget(
            name: "BidMachine",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/BidMachine.xcframework.zip",
            checksum: "d92132b282b54102e4f0ca71a19a92963694b325bd17daf7d13e9f417bf6c47e"
        ),
        .binaryTarget(
            name: "ChartBoost",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/ChartboostSDK.xcframework.zip",
            checksum: "43ecd7580b1297a8141dc0701e641faf4279af34c1346650a7a1422921c4b330"
        ),
        .binaryTarget(
            name: "DTBiOSSDK",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/DTBiOSSDK.xcframework.zip",
            checksum: "cbd1e58f91935cc9045f8cf48fb6e2864c5b4bebd2b3c71c34339f51cd41f193"
        ),
        .binaryTarget(
            name: "IASDKCore",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/IASDKCore.xcframework.zip",
            checksum: "2c7718cc75f1c685556baffbf92071936cbdca0a2c82e83c0f2dffe8b1f4b01f"
        ),
        .binaryTarget(
            name: "InMobiSDK",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/InMobiSDK.xcframework.zip",
            checksum: "91171fdbb93f9ccc5dac56c3cdb9b37beafc711f4f8abc4d67eda47e68a79fd5"
        ),
        .binaryTarget(
            name: "IronSource",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/IronSource.xcframework.zip",
            checksum: "fe7736b2296460b9f7889e69efdec4e0b5a5ccd5c1eea8b67571db2eda6da8e9"
        ),
        .binaryTarget(
            name: "LiftoffMonetizeAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/LiftoffMonetizeAdapter.xcframework.zip",
            checksum: "22e5bbffbb74ba3db90d281ce137c42d7487a53442903c2751ab755936132d03"
        ),
        .binaryTarget(
            name: "MintegralAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/MintegralAdapter.xcframework.zip",
            checksum: "4b71bb4b580900b9123c0ca354472374004d5343f7caf071336d5c3d655543d8"
        ),
        .binaryTarget(
            name: "MolocoSDK",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/MolocoSDK.xcframework.zip",
            checksum: "85d690dc4bc4c6bae3bbbae1a0d8b929019aeaf2db60b018bd0c3b26072e9974"
        ),
        .binaryTarget(
            name: "OMSDK_Appodeal",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/OMSDK_Appodeal.xcframework.zip",
            checksum: "b560c3b942a515806b067a226db3f7507e6fab0b92e3d23607acdddd94b6419d"
        ),
        .binaryTarget(
            name: "PangleAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/PangleAdapter.xcframework.zip",
            checksum: "f643f912f13524a1dd898263e7b1ee3d3362a6395ca39ef056855497cc7b8ad8"
        ),
        .binaryTarget(
            name: "StackModules",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/StackModules.xcframework.zip",
            checksum: "a26293af83801e4551d2527566f74f05fe805a3a757b35bcda76661e2b12bd88"
        ),
        .binaryTarget(
            name: "StackProductPresentation",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/StackProductPresentation.xcframework.zip",
            checksum: "1190e65132d6b379fb2a3a15472f5e75f757fd57e4bd4e2230fce3dd662aaa08"
        ),
        .binaryTarget(
            name: "StackRendering",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/StackRendering.xcframework.zip",
            checksum: "470c1d0ad800fa7a4887278f3a02723d3cd733d0678549192a47d69d6e4cc78f"
        ),
        .binaryTarget(
            name: "UnityAds",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.18/UnityAds.xcframework.zip",
            checksum: "554126a255ced9fc0636b62be115e61fe1d11aae9fa87b0c68433abaf8b09d6d"
        ),
    ]
)
