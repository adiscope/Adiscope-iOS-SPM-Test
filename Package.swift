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
                .target(name: "AdiscopeMediaMaxAdapterFan"),
                .target(name: "AdiscopeMediaMaxAdapterInMobi"),
                .target(name: "AdiscopeMediaMaxAdapterIronSource"),
                .target(name: "AdiscopeMediaMaxAdapterMobVista"),
                .target(name: "AdiscopeMediaMaxAdapterMoloco"),
                .target(name: "AdiscopeMediaMaxAdapterOgury"),
                .target(name: "AdiscopeMediaMaxAdapterPangle"),
                .target(name: "AdiscopeMediaMaxAdapterUnityAds"),
                .target(name: "AdiscopeMediaMaxAdapterVungle"),
                .target(name: "AdiscopeMediaPangle"),
                .target(name: "AdiscopeMediaVungle"),
                .target(name: "AdiscopeMediaMaxAdapterAmazonMediationAdapter"),
                .target(name: "AdiscopeMediaMaxAdapterBidMachineMediationAdapter"),
                .target(name: "AdiscopeMediaMaxAdapterPangleMediationAdapter"),
                .target(name: "AdiscopeMediaMaxAdapterChartboostMediationAdapter"),
                .target(name: "AdiscopeMediaMaxAdapterAdManagerMediationAdapter"),
                .target(name: "AdiscopeMediaMaxAdapterAdMobMediationAdapter"),
                .target(name: "AdiscopeMediaMaxAdapterIronSourceMediationAdapter"),
                .target(name: "AdiscopeMediaMaxAdapterMolocoMediationAdapter"),
                .target(name: "AdiscopeMediaMaxAdapterOguryMediationAdapter"),
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
                .target(name: "Facebook"),
                .target(name: "IASDKCore"),
                .target(name: "InMobiSDK"),
                .target(name: "IronSource"),
                .target(name: "LiftoffMonetizeAdapter"),
                .target(name: "MintegralAdapter"),
                .target(name: "MolocoSDK"),
                .target(name: "OguryAds"),
                .target(name: "OguryCore"),
                .target(name: "OgurySdk"),
                .target(name: "OMSDK_Appodeal"),
                .target(name: "OMSDK_Ogury"),
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
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/Adiscope.zip",
            checksum: "cf60b2c1b8cab037c8ecf75940df44bdb72293ee8cd2fa137f258f7522826337"
        ),
        .binaryTarget(
            name: "AdiscopeMediaAdManager",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AdiscopeMediaAdManager.zip",
            checksum: "9d83cfbeec3895bee99595a91b6d149495a647656dfcb70befb9571cfc801e11"
        ),
        .binaryTarget(
            name: "AdiscopeMediaAdMob",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AdiscopeMediaAdMob.zip",
            checksum: "afd0583bfa7c6c02362ac78cea9e8c5ab5e5efdf84fa8e396aae5e938e8eb65b"
        ),
        .binaryTarget(
            name: "AdiscopeMediaChartBoost",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AdiscopeMediaChartBoost.zip",
            checksum: "f4be793aafdd780df20c5d4ba2d80eda6b03474e1722e34495ea03af40043df6"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMax",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AdiscopeMediaMax.zip",
            checksum: "6f72ae3ca909529bdadeff6c6e587cfbd2a9b55fd628a729edcc91eb8bbcd652"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAdManager",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AdiscopeMediaMaxAdapterAdManager.zip",
            checksum: "2334c95cb28cd9904783723256ba3bf43f4a7422ae26bbe8bde8b21925071909"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAdMob",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AdiscopeMediaMaxAdapterAdMob.zip",
            checksum: "b35ce2b32f118dbb7f3ce014e94de49b5329f7d81d77f697fe33f123b87741eb"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAmazon",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AdiscopeMediaMaxAdapterAmazon.zip",
            checksum: "39e01853cc423d96056d7e8d5de5a8c47eac01d63e9d59a1209f7f645b85eb37"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterBidMachine",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AdiscopeMediaMaxAdapterBidMachine.zip",
            checksum: "c24c94e32d2afc041c47159d1aa4ca682676e6f04b1258b71ed529dcc18d1f3b"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterChartBoost",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AdiscopeMediaMaxAdapterChartBoost.zip",
            checksum: "6691b581ab1f1451bdf405bf41a59363b5a84e191bd0c785644be1b1391e6267"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterDTExchange",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AdiscopeMediaMaxAdapterDTExchange.zip",
            checksum: "72446426997f3794eee71d6800af8c468bb5cf7c11a9554da714da240045fce8"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterFan",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AdiscopeMediaMaxAdapterFan.zip",
            checksum: "a118fadd93473f4232a4ba40c806e6a724734738e63d02386baa5b0fdfc21533"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterInMobi",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AdiscopeMediaMaxAdapterInMobi.zip",
            checksum: "dd7179210b6e42a5e509f5f54c3eeaf7c7370dd9327135c2d7fc8d1c7e37e953"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterIronSource",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AdiscopeMediaMaxAdapterIronSource.zip",
            checksum: "1aa18430a1626f4a8c47e48d113126ca6d979855ab0225d9610aaff48839e4ce"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterMobVista",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AdiscopeMediaMaxAdapterMobVista.zip",
            checksum: "2fb4e6852bef4c016863e199a34f14aa9d763141ebc81417375678d87043361a"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterMoloco",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AdiscopeMediaMaxAdapterMoloco.zip",
            checksum: "0dc718aa6f2b3e1926bda40c20b7828f549568d9b175b40cd6e49a9efe3461bc"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterOgury",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AdiscopeMediaMaxAdapterOgury.zip",
            checksum: "163aed312ed7ce2767174f1d95c66fc8e1b0cc3c2ead396e1e5ff9bea8effff4"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterPangle",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AdiscopeMediaMaxAdapterPangle.zip",
            checksum: "5789ac9aa5dad8e165b2b2d09eed542bc36d8d8017f79642c0110e8aba0c241c"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterUnityAds",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AdiscopeMediaMaxAdapterUnityAds.zip",
            checksum: "8469becaf07db782d4f5c0b287d73e4d938bd6e8070814fb431d329b8e531192"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterVungle",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AdiscopeMediaMaxAdapterVungle.zip",
            checksum: "c64dd3e9e70051b0e62d162907cf38beee4c25762c16a0daed366961b300a492"
        ),
        .binaryTarget(
            name: "AdiscopeMediaPangle",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AdiscopeMediaPangle.zip",
            checksum: "f62cf458f4aa4525f7838a16f26f84765a96ea5befc6ad3fa661249ac659a752"
        ),
        .binaryTarget(
            name: "AdiscopeMediaVungle",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AdiscopeMediaVungle.zip",
            checksum: "3e8f019c203167d1811df76255c91e0c02355dd18c314863e0a630dae97462af"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAmazonMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AppLovinMediationAmazonAdMarketplaceAdapter.xcframework.zip",
            checksum: "03978a302660050771ef9a31ec6c31c8259d81b5aff1836a01003493d0124e3f"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterBidMachineMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AppLovinMediationBidMachineAdapter.xcframework.zip",
            checksum: "5d44e014fcb6a2d6fe539346fd88b3f3747fb75fe523910284dcbcad6c2967b5"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterPangleMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AppLovinMediationByteDanceAdapter.xcframework.zip",
            checksum: "d21dbfe23051d18b4416c1fd79ef689d9e81826d598bd8ac16faeb89271e9b51"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterChartboostMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AppLovinMediationChartboostAdapter.xcframework.zip",
            checksum: "5b836d3b80983749e60963a3bf0e2ee856865e376bb03e9b9bf1fac9e828f300"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAdMobMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AppLovinMediationGoogleAdapter.xcframework.zip",
            checksum: "00a4a083a8fa9a244f7672acc1155280fab8812a78c98989f3ccabfeb290a090"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAdManagerMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AppLovinMediationGoogleAdManagerAdapter.xcframework.zip",
            checksum: "1e249cfd30ed969d1ffee90d6d4bb24d34aaaeb78889cca39512fb15bd946a93"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterIronSourceMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AppLovinMediationIronSourceAdapter.xcframework.zip",
            checksum: "e55967e994a2721f8f7a9e381d5076ea10a798d1c08e26dc4f68055f5ea160c8"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterMolocoMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AppLovinMediationMolocoAdapter.xcframework.zip",
            checksum: "fcd3a1119f5a5ce01e00a50e6ea774cf0576280f780a6a1df3d4baa4dbae9ba8"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterOguryMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AppLovinMediationOguryPresageAdapter.xcframework.zip",
            checksum: "10d6783cc669fc7899bc0210595b1721beb0d6767504f163cb66f67ecc1a6b4a"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterUnityAdsMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AppLovinMediationUnityAdsAdapter.xcframework.zip",
            checksum: "17ba0692490b085dd2718c7965298c16116f1019fcce79a48f13aa573088b10f"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterVungleMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AppLovinMediationVungleAdapter.xcframework.zip",
            checksum: "67d0931047c54329b4b7a0c22bae90453f9fee200455c179f78cf7387d0c962b"
        ),
        .binaryTarget(
            name: "BidMachine",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/BidMachine.xcframework.zip",
            checksum: "d92132b282b54102e4f0ca71a19a92963694b325bd17daf7d13e9f417bf6c47e"
        ),
        .binaryTarget(
            name: "ChartBoost",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/ChartboostSDK.xcframework.zip",
            checksum: "43ecd7580b1297a8141dc0701e641faf4279af34c1346650a7a1422921c4b330"
        ),
        .binaryTarget(
            name: "DTBiOSSDK",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/DTBiOSSDK.xcframework.zip",
            checksum: "cbd1e58f91935cc9045f8cf48fb6e2864c5b4bebd2b3c71c34339f51cd41f193"
        ),
        .binaryTarget(
            name: "Facebook",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/FBAudienceNetwork.xcframework.zip",
            checksum: "dee658acdb07bd64e3a0c375611f4d721fe64c131234ef74a609c6875f013d3c"
        ),
        .binaryTarget(
            name: "IASDKCore",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/IASDKCore.xcframework.zip",
            checksum: "2c7718cc75f1c685556baffbf92071936cbdca0a2c82e83c0f2dffe8b1f4b01f"
        ),
        .binaryTarget(
            name: "InMobiSDK",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/InMobiSDK.xcframework.zip",
            checksum: "91171fdbb93f9ccc5dac56c3cdb9b37beafc711f4f8abc4d67eda47e68a79fd5"
        ),
        .binaryTarget(
            name: "IronSource",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/IronSource.xcframework.zip",
            checksum: "fe7736b2296460b9f7889e69efdec4e0b5a5ccd5c1eea8b67571db2eda6da8e9"
        ),
        .binaryTarget(
            name: "LiftoffMonetizeAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/LiftoffMonetizeAdapter.xcframework.zip",
            checksum: "22e5bbffbb74ba3db90d281ce137c42d7487a53442903c2751ab755936132d03"
        ),
        .binaryTarget(
            name: "MintegralAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/MintegralAdapter.xcframework.zip",
            checksum: "4b71bb4b580900b9123c0ca354472374004d5343f7caf071336d5c3d655543d8"
        ),
        .binaryTarget(
            name: "MolocoSDK",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/MolocoSDK.xcframework.zip",
            checksum: "85d690dc4bc4c6bae3bbbae1a0d8b929019aeaf2db60b018bd0c3b26072e9974"
        ),
        .binaryTarget(
            name: "OguryAds",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/OguryAds.xcframework.zip",
            checksum: "4eae05e71d27b0cf108e69802cbf476a72362fbeec9e55e54a78502912549564"
        ),
        .binaryTarget(
            name: "OguryCore",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/OguryCore.xcframework.zip",
            checksum: "319c93958dc67cdb9c89071bee6fc4ff65b2d6f54cf7d28e86778ea2f4e3cf62"
        ),
        .binaryTarget(
            name: "OgurySdk",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/OgurySdk.xcframework.zip",
            checksum: "35fe9b80ea0954b61cdc0f106bc4f2c4c97c942380ccb5ff4d8bcf7013a394a7"
        ),
        .binaryTarget(
            name: "OMSDK_Appodeal",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/OMSDK_Appodeal.xcframework.zip",
            checksum: "b560c3b942a515806b067a226db3f7507e6fab0b92e3d23607acdddd94b6419d"
        ),
        .binaryTarget(
            name: "OMSDK_Ogury",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/OMSDK_Ogury.xcframework.zip",
            checksum: "d1bfc1ca231b3dcf8156fb66b708bd2956c4c807931601edd81acde7ef224aed"
        ),
        .binaryTarget(
            name: "PangleAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/PangleAdapter.xcframework.zip",
            checksum: "f643f912f13524a1dd898263e7b1ee3d3362a6395ca39ef056855497cc7b8ad8"
        ),
        .binaryTarget(
            name: "StackModules",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/StackModules.xcframework.zip",
            checksum: "a26293af83801e4551d2527566f74f05fe805a3a757b35bcda76661e2b12bd88"
        ),
        .binaryTarget(
            name: "StackProductPresentation",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/StackProductPresentation.xcframework.zip",
            checksum: "1190e65132d6b379fb2a3a15472f5e75f757fd57e4bd4e2230fce3dd662aaa08"
        ),
        .binaryTarget(
            name: "StackRendering",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/StackRendering.xcframework.zip",
            checksum: "470c1d0ad800fa7a4887278f3a02723d3cd733d0678549192a47d69d6e4cc78f"
        ),
        .binaryTarget(
            name: "UnityAds",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/UnityAds.xcframework.zip",
            checksum: "554126a255ced9fc0636b62be115e61fe1d11aae9fa87b0c68433abaf8b09d6d"
        ),
    ]
)
