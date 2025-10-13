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
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.20/Adiscope.zip",
            checksum: "ab23a816a4c4c12091fa0dd6c2ff9a7e4c1912eaa227f34729365b6a2b769a08"
        ),
        .binaryTarget(
            name: "AdiscopeMediaAdManager",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.17/AdiscopeMediaAdManager.zip",
            checksum: "22fdbd33d465b5469d7b0b054eaba048f32316beade3ad4d9807f23acc2430ce"
        ),
        .binaryTarget(
            name: "AdiscopeMediaAdMob",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.17/AdiscopeMediaAdMob.zip",
            checksum: "56afb04cd962c544473b1c21f7fec2b9335b1b3a31d66183672ebaca8898b0e4"
        ),
        .binaryTarget(
            name: "AdiscopeMediaChartBoost",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.17/AdiscopeMediaChartBoost.zip",
            checksum: "53070b883a348fd056f3222fbc11ec5d9a7ca595072e959c4db98d47ef5547c2"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMax",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.17/AdiscopeMediaMax.zip",
            checksum: "c0307ea2cca6835e1a3457da6ee9430a0d3b10d7429f5c59d0025f59744ad7dd"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAdManager",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.17/AdiscopeMediaMaxAdapterAdManager.zip",
            checksum: "fb98957b7f722d8b27c98340d374b2746f38afeabeba6f01331c29af1ddee056"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAdMob",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.17/AdiscopeMediaMaxAdapterAdMob.zip",
            checksum: "5ec330e0468e2785febebd7b82c8e02f19889c3dbc780b96e6022b26585b770b"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAmazon",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.17/AdiscopeMediaMaxAdapterAmazon.zip",
            checksum: "bd25f797a30609158d87cbcdd1c79b73d05c47ddec2d757b7d9707b818386851"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterBidMachine",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.17/AdiscopeMediaMaxAdapterBidMachine.zip",
            checksum: "7d2c7f53d6160951a7d59eb7f1c339f92001c01934420b7773b560708f2ff09f"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterChartBoost",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.17/AdiscopeMediaMaxAdapterChartBoost.zip",
            checksum: "baf1043aa5419fe7e7ba56a6a30cd5d50d255842568e40324d9fe77685b405dd"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterDTExchange",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.17/AdiscopeMediaMaxAdapterDTExchange.zip",
            checksum: "0e49ab97ce1cc812b342ef2c974bbb0eb7d60b24fba84d9ab20b5178f15ac379"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterInMobi",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.17/AdiscopeMediaMaxAdapterInMobi.zip",
            checksum: "93b3110c54483e10bcd6a9f304aff5931c088e11db8c3fb498bd7ede6759acd1"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterIronSource",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.17/AdiscopeMediaMaxAdapterIronSource.zip",
            checksum: "91be357db44b59bd2f5885242a9cd36f7b08f8f494d265d35603b451290d428d"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterMobVista",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.17/AdiscopeMediaMaxAdapterMobVista.zip",
            checksum: "f4686254fdfd0fb5e859cef8886aad33beee2edacdb4b48f8dd8c2c252e1787f"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterMoloco",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.17/AdiscopeMediaMaxAdapterMoloco.zip",
            checksum: "b5623ebc205c65b79d40f33df69c9314b321ee487990ab948be0558b145dab94"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterPangle",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.17/AdiscopeMediaMaxAdapterPangle.zip",
            checksum: "fc7eb3a02f1c5dcbb9534de03534d3c46bd30718bfac91dd9d03fcff3815ab44"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterUnityAds",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.17/AdiscopeMediaMaxAdapterUnityAds.zip",
            checksum: "d27bcf2d2e44bdae95f4cd4176a44ef2b4bdbc7e7b830e6249f9b767fb53eba7"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterVungle",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.17/AdiscopeMediaMaxAdapterVungle.zip",
            checksum: "08f9cd8f301a70520b1934787cb3fdce155031b00e767dfe6e91e7f08a7c11ec"
        ),
        .binaryTarget(
            name: "AdiscopeMediaPangle",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.17/AdiscopeMediaPangle.zip",
            checksum: "668d7b95d436ee46b83607443427e559903099f2fe80defb9081d3af57a8689b"
        ),
        .binaryTarget(
            name: "AdiscopeMediaVungle",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.17/AdiscopeMediaVungle.zip",
            checksum: "6ba079844f6d4eda5dde5280280b6488d636dccf47954acc64fd21d5d9bfee3e"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterBidMachineMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.17/AppLovinMediationBidMachineAdapter.xcframework.zip",
            checksum: "0daa8f77c8d9b29f656bb173b5b74faf409aa514c75e2d547922625279facba1"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterPangleMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.17/AppLovinMediationByteDanceAdapter.xcframework.zip",
            checksum: "425d0ec75a9936f58567eb4f30311cc78f8f5b6480c1b1781083674ed6c567eb"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterChartboostMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.17/AppLovinMediationChartboostAdapter.xcframework.zip",
            checksum: "eb7ddf6b829903f12e5c6ef9a678b59292d892c73d9a11018b3221d466c75ab1"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAdManagerMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.17/AppLovinMediationGoogleAdManagerAdapter.xcframework.zip",
            checksum: "02abe018304afd0b7254021fa6d6b26d53e97e1644c0000aa61c88824b9a5607"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAdMobMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.17/AppLovinMediationGoogleAdapter.xcframework.zip",
            checksum: "44905049b27315151b5fc0b249a91a64a8e17c7a3c9fb33ca25bddf3811374f6"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterIronSourceMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.17/AppLovinMediationIronSourceAdapter.xcframework.zip",
            checksum: "eb9038af9fcb5d50aa27a456b3ecc1fb448439f6a31f958682be4cf92b418897"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterMolocoMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.17/AppLovinMediationMolocoAdapter.xcframework.zip",
            checksum: "564cc5315d9869b87d7ac9c2d075ead74e1b736b770756d9ed0349724c7a898e"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterUnityAdsMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.17/AppLovinMediationUnityAdsAdapter.xcframework.zip",
            checksum: "b89aea9a7c31c3d1eb679a49bfda9ef9f2589639a6ec2ff63ac3bdfa953876c0"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterVungleMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.17/AppLovinMediationVungleAdapter.xcframework.zip",
            checksum: "fb265586ccfc61d39f2f3f20233133277e52e800a66a78b87b3b3d97ab68bcc2"
        ),
        .binaryTarget(
            name: "BidMachine",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.17/BidMachine.xcframework.zip",
            checksum: "ab0b36a701a4ddb8c4fd5cb3ebc466a04914e2b822bb8e3abc0b64aefb97bd7c"
        ),
        .binaryTarget(
            name: "ChartBoost",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.17/ChartboostSDK.xcframework.zip",
            checksum: "a68ac9cecf17275fe9db291c3bda45efcb2af1004efed3504aa51777c1ef2d82"
        ),
        .binaryTarget(
            name: "DTBiOSSDK",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.17/DTBiOSSDK.xcframework.zip",
            checksum: "0c35b0749446d2a4bc2b6be9794399fcaa2b04bd19216a6be2740909b88a01d6"
        ),
        .binaryTarget(
            name: "IASDKCore",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.17/IASDKCore.xcframework.zip",
            checksum: "760daf098fb81df49f731c9ca54b95232700da4725f82a83263a60f1512acedd"
        ),
        .binaryTarget(
            name: "InMobiSDK",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.17/InMobiSDK.xcframework.zip",
            checksum: "dbe9c0ba89d272e1e0e1dbf0a5a4d5b9974dc048efc128da97216beb76d4898a"
        ),
        .binaryTarget(
            name: "IronSource",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.17/IronSource.xcframework.zip",
            checksum: "985cf2a34bf6963b4f05a44ef0eec33299a90cf203ee876c039790930b529ba0"
        ),
        .binaryTarget(
            name: "LiftoffMonetizeAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.17/LiftoffMonetizeAdapter.xcframework.zip",
            checksum: "506eb7f8176555851620a6bf033a07bfa8ec90f7cdad3f9f8c7273d0a21930a7"
        ),
        .binaryTarget(
            name: "MintegralAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.17/MintegralAdapter.xcframework.zip",
            checksum: "fc778d7b4e9fa3435d6241c8eacd30dde71aa07cd5df295839740616c335ed56"
        ),
        .binaryTarget(
            name: "MolocoSDK",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.17/MolocoSDK.xcframework.zip",
            checksum: "08d83dd34b74a843aeaf9bef832e87ff3411ac8ed831e780b94eb6c9e7c7383b"
        ),
        .binaryTarget(
            name: "OMSDK_Appodeal",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.17/OMSDK_Appodeal.xcframework.zip",
            checksum: "4d5e48327b5a6ffcf45338eaa4287932fbcac8e174c8de711efd4da2a92599af"
        ),
        .binaryTarget(
            name: "PangleAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.17/PangleAdapter.xcframework.zip",
            checksum: "e907a0197e6fc4cbd0058ec81fa10a0d0b85e3b5b795d09e452fa9856af8c0bc"
        ),
        .binaryTarget(
            name: "StackModules",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.17/StackModules.xcframework.zip",
            checksum: "72d04b5b56258cdaed19a0869d5fc94761bd477bee0efff7f4d9f06fa3bf1f46"
        ),
        .binaryTarget(
            name: "StackProductPresentation",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.17/StackProductPresentation.xcframework.zip",
            checksum: "d67be2219ea88ab9f541462e48c6b2265404b4e04f4f8440361bd3deec6101a0"
        ),
        .binaryTarget(
            name: "StackRendering",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.17/StackRendering.xcframework.zip",
            checksum: "40b512f7e53b9894297b43940f650a7da31211750108c296c233c1ff99274785"
        ),
        .binaryTarget(
            name: "UnityAds",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.17/UnityAds.xcframework.zip",
            checksum: "673f154e0f1f8284e2e0e71f8d260d00933aebcf2167b3f20b8733fd2c0b830b"
        ),
        .binaryTarget(
            name: "TnkRwdSdk2",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.11/TnkRwdSdk2.v.5.73.zip",
            checksum: "a98ef1ba9af1c5cb06b88cc0968f8f80407d36320707db7d6ff8d7cf6e847947"
        ),
    ]
)
