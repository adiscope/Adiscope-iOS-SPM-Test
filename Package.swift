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
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "12.14.0"),
        .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager.git", exact: "7.6.3"),
        .package(url: "https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package.git", exact: "8.0.4"),
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.5.1"),
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
                .target(name: "AdiscopeMediaMaxAdapterBigo"),
                .target(name: "AdiscopeMediaMaxAdapterChartBoost"),
                .target(name: "AdiscopeMediaMaxAdapterDTExchange"),
//                .target(name: "AdiscopeMediaMaxAdapterFan"),
                .target(name: "AdiscopeMediaMaxAdapterInMobi"),
                .target(name: "AdiscopeMediaMaxAdapterIronSource"),
                .target(name: "AdiscopeMediaMaxAdapterLine"),
                .target(name: "AdiscopeMediaMaxAdapterMobVista"),
                .target(name: "AdiscopeMediaMaxAdapterMoloco"),
                .target(name: "AdiscopeMediaMaxAdapterOgury"),
                .target(name: "AdiscopeMediaMaxAdapterPangle"),
                .target(name: "AdiscopeMediaMaxAdapterPubMatic"),
                .target(name: "AdiscopeMediaMaxAdapterVungle"),
                .target(name: "AdiscopeMediaPangle"),
                .target(name: "AdiscopeMediaTnkPub"),
                .target(name: "AdiscopeMediaVungle"),
                .target(name: "AdiscopeMediaMaxAdapterAmazonMediationAdapter"),
                .target(name: "AdiscopeMediaMaxAdapterBidMachineMediationAdapter"),
                .target(name: "AdiscopeMediaMaxAdapterBigoMediationAdapter"),
                .target(name: "AdiscopeMediaMaxAdapterPangleMediationAdapter"),
                .target(name: "AdiscopeMediaMaxAdapterChartboostMediationAdapter"),
                .target(name: "AdiscopeMediaMaxAdapterFanMediationAdapter"),
                .target(name: "AdiscopeMediaMaxAdapterDTMediationAdapter"),
                .target(name: "AdiscopeMediaMaxAdapterAdManagerMediationAdapter"),
                .target(name: "AdiscopeMediaMaxAdapterAdMobMediationAdapter"),
                .target(name: "AdiscopeMediaMaxAdapterInMobiMediationAdapter"),
                .target(name: "AdiscopeMediaMaxAdapterIronSourceMediationAdapter"),
                .target(name: "AdiscopeMediaMaxAdapterLineMediationAdapter"),
                .target(name: "AdiscopeMediaMaxAdapterMintegralMediationAdapter"),
                .target(name: "AdiscopeMediaMaxAdapterMolocoMediationAdapter"),
                .target(name: "AdiscopeMediaMaxAdapterOguryMediationAdapter"),
                .target(name: "AdiscopeMediaMaxAdapterPubMaticMediationAdapter"),
                .target(name: "AdiscopeMediaMaxAdapterUnityAdsMediationAdapter"),
                .target(name: "AdiscopeMediaMaxAdapterVungleMediationAdapter"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                .product(name: "MintegralAdSDK", package: "MintegralAdSDK-Swift-Package"),
                .product(name: "VungleAdsSDK", package: "VungleAdsSDK-SwiftPackageManager"),
                .target(name: "BidMachine"),
                .target(name: "BigoADS"),
                .target(name: "ChartBoost"),
                .target(name: "DTBiOSSDK"),
                .target(name: "Facebook"),
                .target(name: "FiveAd"),
                .target(name: "IASDKCore"),
                .target(name: "InMobiSDK"),
                .target(name: "IronSource"),
                .target(name: "MolocoSDK"),
                .target(name: "OguryAds"),
                .target(name: "OguryCore"),
                .target(name: "OgurySdk"),
                .target(name: "OMSDK_Appodeal"),
                .target(name: "OMSDK_Ogury"),
                .target(name: "OMSDK_Pubmatic"),
                .target(name: "OpenWrapSDK"),
                .target(name: "PAGAdSDK"),
                .target(name: "StackModules"),
                .target(name: "StackProductPresentation"),
                .target(name: "StackRendering"),
                .target(name: "TnkPubSdk"),
                .target(name: "UnityAds"),
            ],
            resources: [.copy("PAGAdSDK.bundle")],
            linkerSettings: [
              .linkedFramework("Accelerate" ),
              .linkedLibrary("resolv"),
              .linkedLibrary("bz2"),
              .linkedLibrary("c++abi"),
              .linkedLibrary("c++"),
            ]
        ),
        .binaryTarget(
            name: "Adiscope",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/Adiscope.zip",
            checksum: "846339c5a47b22abc3525d23399f2eb806b08e0f9eee6d3d0375c11376a54c72"
        ),
        .binaryTarget(
            name: "AdiscopeMediaAdManager",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/AdiscopeMediaAdManager.zip",
            checksum: "e42f511105a570ec86b41ee2c3458522a28cb38a747b4f1f7c3e7f778960e880"
        ),
        .binaryTarget(
            name: "AdiscopeMediaAdMob",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/AdiscopeMediaAdMob.zip",
            checksum: "a9fd3480f3ff7b9982c416a5c800f7f023d49c3ea43ff5d36a2028c050ee7ab4"
        ),
        .binaryTarget(
            name: "AdiscopeMediaChartBoost",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/AdiscopeMediaChartBoost.zip",
            checksum: "15f6d88d69946266c228d907e89dabe815a94d7890b6cdbe0bc2673280f04af2"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMax",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/AdiscopeMediaMax.zip",
            checksum: "fd67da70567b01119c8d4d159b51f90f18ecbf5dddb448e1fae4ea2b19c36287"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAdManager",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/AdiscopeMediaMaxAdapterAdManager.zip",
            checksum: "d41fc003b68c0cd3ba488b4f8603c0c58922962117a652a391b5a2b55ae9021a"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAdMob",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/AdiscopeMediaMaxAdapterAdMob.zip",
            checksum: "5bbdeaa8a5d744004c4009812de275df208a8ab936f1f624fe92a5994947e780"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAmazon",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/AdiscopeMediaMaxAdapterAmazon.zip",
            checksum: "8caaf9f4daf38c5dc7c4c006aacc16098805cfde75bfb3fb887b9da1e14cd480"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterBidMachine",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/AdiscopeMediaMaxAdapterBidMachine.zip",
            checksum: "dec1313f01aef177ee64a7b12178c9e1749cceaf86fd558dbbe0bc5b3e4b8009"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterBigo",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/AdiscopeMediaMaxAdapterBigo.zip",
            checksum: "c8a7e885206f592d17f92375e62411d1a32e54fa2d10e8b8af81ca0128fcb6a3"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterChartBoost",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/AdiscopeMediaMaxAdapterChartBoost.zip",
            checksum: "024a9419ed4d77be61a13bde178bf84cc6f9413073a1c046240b1f6338c00047"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterDTExchange",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/AdiscopeMediaMaxAdapterDTExchange.zip",
            checksum: "b0e4bf4f5cfc3d5c732c2cb366162cb89e0bc89c2b05a7d6dfb0f99f164baa94"
        ),
//        .binaryTarget(
//            name: "AdiscopeMediaMaxAdapterFan",
//            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/AdiscopeMediaMaxAdapterFan.zip",
//            checksum: "3a674058e5af06a6d320d467217cc94017dc25ff425d2c259e160c09318c3ebb"
//        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterInMobi",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/AdiscopeMediaMaxAdapterInMobi.zip",
            checksum: "9d4e0efcf14908d2f6f71c574316c8613bb61de18758c24dc3506181ffcb397c"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterIronSource",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/AdiscopeMediaMaxAdapterIronSource.zip",
            checksum: "e992a5928ac409ec5f7e4f686c2e1ba7ce6e068b425c4118508c32ad4378d504"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterLine",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/AdiscopeMediaMaxAdapterLine.zip",
            checksum: "15d8cb92d36995493d4cb4e6ec7278c8bedf04165b49eb230750df0b7c38a08c"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterMobVista",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/AdiscopeMediaMaxAdapterMobVista.zip",
            checksum: "50f20fb7e408c7b503dedafd9d8fdf84d87a002fb4956d86e8d41c73de213549"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterMoloco",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/AdiscopeMediaMaxAdapterMoloco.zip",
            checksum: "b7a3bdf1392f4b64e32d5816b1eaecd1e998cc606d3c5e70811a6363553bbc93"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterOgury",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/AdiscopeMediaMaxAdapterOgury.zip",
            checksum: "ab78e0550992962603ad319cd7bc96664a2003320943ee77efd116562975c246"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterPangle",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/AdiscopeMediaMaxAdapterPangle.zip",
            checksum: "d8155e6c423e193d5f368d3d4e1e5d2962c8684a4f3be0a8fbffda20bc7d37e7"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterPubMatic",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/AdiscopeMediaMaxAdapterPubMatic.zip",
            checksum: "583dbea6d81eedfebab2efd98099b82375a9084cdee0f6eb54d5993bcd2a2a25"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterUnityAds",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/AdiscopeMediaMaxAdapterUnityAds.zip",
            checksum: "6d97a9a56cfe335430daf9cb2defbcfc86324b8fcc13482bdaa8c4772d139eda"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterVungle",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/AdiscopeMediaMaxAdapterVungle.zip",
            checksum: "5b7979c82d6003d302e35d81af6cbbb5afe046c6591bb2b1d9e3a2d0689f2d4b"
        ),
        .binaryTarget(
            name: "AdiscopeMediaPangle",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/AdiscopeMediaPangle.zip",
            checksum: "c1d3901a022d54aa34add0eb65be47efd71bd3660879237cb675078e13251106"
        ),
        .binaryTarget(
            name: "AdiscopeMediaTnkPub",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/AdiscopeMediaTnkPub.zip",
            checksum: "dacac9c16014403b5fddb6f0c6f712ba260fe3a57f0e2fe912d062f0e99dbc8b"
        ),
        .binaryTarget(
            name: "AdiscopeMediaVungle",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/AdiscopeMediaVungle.zip",
            checksum: "4399ca548d8eb65c8e52c71e97cf71861877db9b994f0aa2d13772895102be78"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAmazonMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/AppLovinMediationAmazonAdMarketplaceAdapter.xcframework.zip",
            checksum: "4ef946e7aac3aef93d87f50af9baba1c8a84f7962ab1265793da6c2a22270aa0"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterBidMachineMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/AppLovinMediationBidMachineAdapter.xcframework.zip",
            checksum: "7b534527aa275988c378f27be83d4fef1bda43bd1b86b60cbe39f049fcedc8fa"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterBigoMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/AppLovinMediationBigoAdsAdapter.xcframework.zip",
            checksum: "9e22b7b377544f2d91f3b4e63e631d019dd14122359407bc226369e26ee2eefb"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterPangleMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/AppLovinMediationByteDanceAdapter.xcframework.zip",
            checksum: "99baf9b88d16bcaf408612835f7e40724ecabef5e8b1e801117f5641e2001697"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterChartboostMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/AppLovinMediationChartboostAdapter.xcframework.zip",
            checksum: "48687bf6b115740380811a9bf9aa7e0e9fc6049fbc22660fda80813c13491d91"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterFanMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/AppLovinMediationFacebookAdapter.xcframework.zip",
            checksum: "748cef48ba8837f7376ddd9d5de7f844c30cb6533791ba16edbd0666bba851dc"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterDTMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/AppLovinMediationFyberAdapter.xcframework.zip",
            checksum: "80ab1cd604ba08ad45ffff98e8ba7b9f3a337ab031113486c0256b78d66462be"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAdMobMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/AppLovinMediationGoogleAdapter.xcframework.zip",
            checksum: "57c8504d1849a2737c46fb96c6103c3f2d5c145fe87c66368d63e473a58f9d93"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAdManagerMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/AppLovinMediationGoogleAdManagerAdapter.xcframework.zip",
            checksum: "94242eff8ca8600a1a76bbbe43534967c8cd9054a5199ebcfa8de4cfabf6f499"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterInMobiMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/AppLovinMediationInMobiAdapter.xcframework.zip",
            checksum: "0117c6c4af921e0a612c1c8ea68bec8e3ad90b99d2986b80df3d9c2e12662fe0"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterIronSourceMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/AppLovinMediationIronSourceAdapter.xcframework.zip",
            checksum: "0131fd1de69079552e021339b6ee1fd75d9d0cb355b7ca2931dbaae5a5a55ab4"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterLineMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/AppLovinMediationLineAdapter.xcframework.zip",
            checksum: "dd09fe917909e3d17fc342c74cabb3e43b6c63c1ca3566aaf6fd633402c0541a"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterMintegralMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/AppLovinMediationMintegralAdapter.xcframework.zip",
            checksum: "ded2eb8b4478ee3016fceae7254bb7fc043f203d563f6e215cf8feaf803a37d3"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterMolocoMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/AppLovinMediationMolocoAdapter.xcframework.zip",
            checksum: "02f625f5ec197b00e4639c68d149b62968a9ffd50d88b981c076f9a5b11b42cd"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterOguryMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/AppLovinMediationOguryPresageAdapter.xcframework.zip",
            checksum: "79bb7870266aa4fff9bf52b73f86708b90b4be9e99acdef501dcd82e66ebcfd9"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterPubMaticMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/AppLovinMediationPubMaticAdapter.xcframework.zip",
            checksum: "99e28e74f0194399241d88f3807d6aa8ea7a8343424f88eb8e8bb661d137ba6a"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterUnityAdsMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/AppLovinMediationUnityAdsAdapter.xcframework.zip",
            checksum: "29e110e685d5fc8c11ed83d810bc25bea4b59d771446e50ef9a806f5a9e2837f"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterVungleMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/AppLovinMediationVungleAdapter.xcframework.zip",
            checksum: "322227aef9cb2487fcf81b63fa47d2261c76f4052ba3a596861193659ab2f465"
        ),
        .binaryTarget(
            name: "BidMachine",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/BidMachine.xcframework.zip",
            checksum: "edaf387d45e289c21aca36125b76054a58505be00b3d1b6d2b0d3305081211cd"
        ),
        .binaryTarget(
            name: "BigoADS",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/BigoADS.xcframework.zip",
            checksum: "dddec8f8962493f089e9d040a23fb88299c60f662bb9e422a66eff88edd5837d"
        ),
        .binaryTarget(
            name: "ChartBoost",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/ChartboostSDK.xcframework.zip",
            checksum: "21ab73dc8f95f325bc31b63e66a64c1d719ae306d8c4c50e08d494200f86dfdd"
        ),
        .binaryTarget(
            name: "DTBiOSSDK",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/DTBiOSSDK.xcframework.zip",
            checksum: "ca1a08923bb911d481d0793980cc3723829bbab5135339d43ca33a8ea1f3d126"
        ),
        .binaryTarget(
            name: "Facebook",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/FBAudienceNetwork.xcframework.zip",
            checksum: "584282ccc2121d3d4c51ea69049665695fbf93c2b581a1e07ddb8b9964d3f1d4"
        ),
        .binaryTarget(
            name: "FiveAd",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/FiveAd.xcframework.zip",
            checksum: "cc764c6545423f3502c6256fbe099ff7fd2839e1accebd0da6a4e1cf66a2752b"
        ),
        .binaryTarget(
            name: "IASDKCore",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/IASDKCore.xcframework.zip",
            checksum: "8aace3da1d23f609fbc839c71e677be637157b1bf10a3db1d8617807645b0050"
        ),
        .binaryTarget(
            name: "InMobiSDK",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/InMobiSDK.xcframework.zip",
            checksum: "4a7ff71b8128766db4f0b03c3a70f8abb5f3cc9023824ed114518538f9d2f45f"
        ),
        .binaryTarget(
            name: "IronSource",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/IronSource.xcframework.zip",
            checksum: "1040a68bab4fda76f7e345017d9254c9ca2034fc62c2cb352f46a3267f2d532f"
        ),
        .binaryTarget(
            name: "MolocoSDK",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/MolocoSDK.xcframework.zip",
            checksum: "0e0deaec5993d71e13a67328ed4fd8ecc74f9bdb89527dbabc18126c3bdfb80b"
        ),
        .binaryTarget(
            name: "OguryAds",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/OguryAds.xcframework.zip",
            checksum: "f4adeaa6fe08c79b40d139eff118a85122632de7ff9be7045fe28d90bed77837"
        ),
        .binaryTarget(
            name: "OguryCore",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/OguryCore.xcframework.zip",
            checksum: "5f38da00f63ef9e5007a86eb4685066f1589eb01becbc5091aa07316a3781025"
        ),
        .binaryTarget(
            name: "OgurySdk",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/OgurySdk.xcframework.zip",
            checksum: "da142c8560c02c932738a6278c941b7adb6bd5289f968dc72f5fabf60d01a1a4"
        ),
        .binaryTarget(
            name: "OMSDK_Appodeal",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/OMSDK_Appodeal.xcframework.zip",
            checksum: "4b8d42807926e26fbb4c6f01923d8688f1f03dccb8e9f530fa3a35ef0bebe20e"
        ),
        .binaryTarget(
            name: "OMSDK_Ogury",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/OMSDK_Ogury.xcframework.zip",
            checksum: "dc79c372ed29196a2d5db75efae63981f9b2353d9e4d0e15d85c0c5b0a5ce2fe"
        ),
        .binaryTarget(
            name: "OMSDK_Pubmatic",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/OMSDK_Pubmatic.xcframework.zip",
            checksum: "1e7bc27588037ef3d4de478c0dc9e7231eefbeda5e51e4d5e1fa8d2d084dfefd"
        ),
        .binaryTarget(
            name: "OpenWrapSDK",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/OpenWrapSDK.xcframework.zip",
            checksum: "71029ead36a01482354fd47a824755fc5967d7dc3a203bf30d1093b58b056059"
        ),
        .binaryTarget(
            name: "PAGAdSDK",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/PAGAdSDK.xcframework.zip",
            checksum: "d4e89ea29d07fd397d8a65f091544a9a1addd4ac376a24a325100a0f15d6b2d6"
        ),
        .binaryTarget(
            name: "StackModules",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/StackModules.xcframework.zip",
            checksum: "618a67e0528c8e54c72e427d7f3feaefc83a0f165e0a67f96a86f155a5bb471f"
        ),
        .binaryTarget(
            name: "StackProductPresentation",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/StackProductPresentation.xcframework.zip",
            checksum: "4de41ac72abd4ce7f96694bca13a7fb365dd22ce193dda6309d55245157b8416"
        ),
        .binaryTarget(
            name: "StackRendering",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/StackRendering.xcframework.zip",
            checksum: "71fb5a3dc515c6118f67c92ae9cd8d74f3b207467483c4d6657f6c2d4e6e834e"
        ),
        .binaryTarget(
            name: "TnkPubSdk",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/TnkPubSdk.xcframework.zip",
            checksum: "d96cccf26eff04f2b3df845124638f3facf7703b298abaac586a4ff636a5040c"
        ),
        .binaryTarget(
            name: "UnityAds",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.1.24/UnityAds.xcframework.zip",
            checksum: "5782f94d48fa7d1fa88182247f687833015a1aada1d7d5ceb88356fe5c8b047d"
        ),
    ]
)
