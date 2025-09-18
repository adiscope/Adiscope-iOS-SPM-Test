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
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.3.1"),
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
                .target(name: "TnkRwdSdk2"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "Adiscope",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/Adiscope.zip",
            checksum: "5d12affa4e78eb9ebe9c5f9ef058be95b58f2489dda3293f13388c593bbce7fc"
        ),
        .binaryTarget(
            name: "AdiscopeMediaAdManager",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/AdiscopeMediaAdManager.zip",
            checksum: "63207bf86a2c52ef12682e028f98b3fc3b749f503a5787f3bc27612dd5fbd55b"
        ),
        .binaryTarget(
            name: "AdiscopeMediaAdMob",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/AdiscopeMediaAdMob.zip",
            checksum: "da1ca52729f43e02f91513d3f635c17595aaeba7f16f0007d05d7bfd39fc9b88"
        ),
        .binaryTarget(
            name: "AdiscopeMediaChartBoost",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/AdiscopeMediaChartBoost.zip",
            checksum: "79a147ba0a7bd9767d97ce844253b3843ebacc446f8643063acfbb2486e00a8f"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMax",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/AdiscopeMediaMax.zip",
            checksum: "a39e28dc21b695c9a27f5eda840dbfeea900d929eb0f022e44c8039654d4dbb8"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAdManager",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/AdiscopeMediaMaxAdapterAdManager.zip",
            checksum: "ac0f1be01f7532f871a0439ac98d81dac183be0f0048587e46246ba111b8915b"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAdMob",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/AdiscopeMediaMaxAdapterAdMob.zip",
            checksum: "c7a6ddcbaeea49ff1c50ba5a440aaa48aff9de5096326dc09eea588e332e0f12"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAmazon",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/AdiscopeMediaMaxAdapterAmazon.zip",
            checksum: "cc1a9efd4b8d8b884725f155005a97a462280b2f57535ef2f53d92782aedaa2c"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterBidMachine",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/AdiscopeMediaMaxAdapterBidMachine.zip",
            checksum: "e8a78de96f8a32ae0483b7143dc07f8d54d559b56eeb8f9f1c129fe02c2deba8"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterChartBoost",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/AdiscopeMediaMaxAdapterChartBoost.zip",
            checksum: "c9298c3efd009659c4568be51815bb76a52de64db29deb5f3f13a0150eb59334"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterDTExchange",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/AdiscopeMediaMaxAdapterDTExchange.zip",
            checksum: "94a86eb442c954281fcc55b90a0821ec7e5f8c30d9fe15b83fa821d4132e251a"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterInMobi",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/AdiscopeMediaMaxAdapterInMobi.zip",
            checksum: "ee18578e1f395fbf4558d8b083d7b07881fc8e4e588fe8ff62581eb92866e781"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterIronSource",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/AdiscopeMediaMaxAdapterIronSource.zip",
            checksum: "38d0d2010188275e60661391919f09d00971e70b484ed96c49b2410667770496"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterMobVista",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/AdiscopeMediaMaxAdapterMobVista.zip",
            checksum: "46e90e2438dcc9e04740673871c791e1f3855a01a7cc2aba3b57b913652d76bb"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterMoloco",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/AdiscopeMediaMaxAdapterMoloco.zip",
            checksum: "7a05cf731d4b6c92c061ef81a8047c96719a3aef4e96250287841d21d2523954"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterPangle",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/AdiscopeMediaMaxAdapterPangle.zip",
            checksum: "c8cc4eb47173aefa2adcae2f85ec9015e75f7c13df65ed05022b0890b1d7e5b6"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterUnityAds",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/AdiscopeMediaMaxAdapterUnityAds.zip",
            checksum: "d552be29dcdaec6f121410377ad2d7719026f61a4e08638b3090f782167b82c8"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterVungle",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/AdiscopeMediaMaxAdapterVungle.zip",
            checksum: "5ad47f2a398f30e4ccae9501a2b8cf8bd01f1959a96ba02836d5f3a7734bb09f"
        ),
        .binaryTarget(
            name: "AdiscopeMediaPangle",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/AdiscopeMediaPangle.zip",
            checksum: "21268a447b798c19f8048343cfc24a04da87886f9b9fb9fc3ebc32c6b1972224"
        ),
        .binaryTarget(
            name: "AdiscopeMediaVungle",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/AdiscopeMediaVungle.zip",
            checksum: "3b709475d1a536d9d06be56cf11c29040e1759ec2cd2be0399c11941c2201217"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterBidMachineMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/AppLovinMediationBidMachineAdapter.xcframework.zip",
            checksum: "f82815c9436046cde585c5dbba1a0fc35589ffaeb82d318d8c152b77f6bcbe07"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterPangleMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/AppLovinMediationByteDanceAdapter.xcframework.zip",
            checksum: "ed808976a715f4de59c6cbcb5e1fc9ae742f9c60e382220425f854ab5ff7e815"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterChartboostMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/AppLovinMediationChartboostAdapter.xcframework.zip",
            checksum: "994fc03fc42197c03b0b0ad145abc50d75a1d76910661fc788859c75b4ab2e33"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAdManagerMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/AppLovinMediationGoogleAdManagerAdapter.xcframework.zip",
            checksum: "02abe018304afd0b7254021fa6d6b26d53e97e1644c0000aa61c88824b9a5607"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAdMobMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/AppLovinMediationGoogleAdapter.xcframework.zip",
            checksum: "44905049b27315151b5fc0b249a91a64a8e17c7a3c9fb33ca25bddf3811374f6"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterIronSourceMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/AppLovinMediationIronSourceAdapter.xcframework.zip",
            checksum: "eb9038af9fcb5d50aa27a456b3ecc1fb448439f6a31f958682be4cf92b418897"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterMolocoMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/AppLovinMediationMolocoAdapter.xcframework.zip",
            checksum: "e39f0e30476fc93c8e32fa661b358ea040b5e6243c51f0153c8c68515a89c814"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterUnityAdsMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/AppLovinMediationUnityAdsAdapter.xcframework.zip",
            checksum: "8e74476445da4acd91a7d77ce510758a5490b81802e8ce9168ec8b495d7daeac"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterVungleMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/AppLovinMediationVungleAdapter.xcframework.zip",
            checksum: "f0772c700a002c9680055e81c0c2e20c5e9cee0e6e7b2dd04b870c41b03c0c93"
        ),
        .binaryTarget(
            name: "BidMachine",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/BidMachine.xcframework.zip",
            checksum: "ab0b36a701a4ddb8c4fd5cb3ebc466a04914e2b822bb8e3abc0b64aefb97bd7c"
        ),
        .binaryTarget(
            name: "ChartBoost",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/ChartboostSDK.xcframework.zip",
            checksum: "a68ac9cecf17275fe9db291c3bda45efcb2af1004efed3504aa51777c1ef2d82"
        ),
        .binaryTarget(
            name: "DTBiOSSDK",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/DTBiOSSDK.xcframework.zip",
            checksum: "0c35b0749446d2a4bc2b6be9794399fcaa2b04bd19216a6be2740909b88a01d6"
        ),
        .binaryTarget(
            name: "IASDKCore",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/IASDKCore.xcframework.zip",
            checksum: "760daf098fb81df49f731c9ca54b95232700da4725f82a83263a60f1512acedd"
        ),
        .binaryTarget(
            name: "InMobiSDK",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/InMobiSDK.xcframework.zip",
            checksum: "dbe9c0ba89d272e1e0e1dbf0a5a4d5b9974dc048efc128da97216beb76d4898a"
        ),
        .binaryTarget(
            name: "IronSource",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/IronSource.xcframework.zip",
            checksum: "985cf2a34bf6963b4f05a44ef0eec33299a90cf203ee876c039790930b529ba0"
        ),
        .binaryTarget(
            name: "LiftoffMonetizeAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/LiftoffMonetizeAdapter.xcframework.zip",
            checksum: "506eb7f8176555851620a6bf033a07bfa8ec90f7cdad3f9f8c7273d0a21930a7"
        ),
        .binaryTarget(
            name: "MintegralAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/MintegralAdapter.xcframework.zip",
            checksum: "fc778d7b4e9fa3435d6241c8eacd30dde71aa07cd5df295839740616c335ed56"
        ),
        .binaryTarget(
            name: "MolocoSDK",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/MolocoSDK.xcframework.zip",
            checksum: "08d83dd34b74a843aeaf9bef832e87ff3411ac8ed831e780b94eb6c9e7c7383b"
        ),
        .binaryTarget(
            name: "OMSDK_Appodeal",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/OMSDK_Appodeal.xcframework.zip",
            checksum: "4d5e48327b5a6ffcf45338eaa4287932fbcac8e174c8de711efd4da2a92599af"
        ),
        .binaryTarget(
            name: "PangleAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/PangleAdapter.xcframework.zip",
            checksum: "e907a0197e6fc4cbd0058ec81fa10a0d0b85e3b5b795d09e452fa9856af8c0bc"
        ),
        .binaryTarget(
            name: "StackModules",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/StackModules.xcframework.zip",
            checksum: "72d04b5b56258cdaed19a0869d5fc94761bd477bee0efff7f4d9f06fa3bf1f46"
        ),
        .binaryTarget(
            name: "StackProductPresentation",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/StackProductPresentation.xcframework.zip",
            checksum: "d67be2219ea88ab9f541462e48c6b2265404b4e04f4f8440361bd3deec6101a0"
        ),
        .binaryTarget(
            name: "StackRendering",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/StackRendering.xcframework.zip",
            checksum: "40b512f7e53b9894297b43940f650a7da31211750108c296c233c1ff99274785"
        ),
        .binaryTarget(
            name: "UnityAds",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.13/UnityAds.xcframework.zip",
            checksum: "673f154e0f1f8284e2e0e71f8d260d00933aebcf2167b3f20b8733fd2c0b830b"
        ),
        .binaryTarget(
            name: "TnkRwdSdk2",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.11/TnkRwdSdk2.v.5.73.zip",
            checksum: "a98ef1ba9af1c5cb06b88cc0968f8f80407d36320707db7d6ff8d7cf6e847947"
        ),
    ]
)
