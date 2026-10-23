// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdstirSDKMediationAdapterUnityAds",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "AdstirAdsMediationAdapterUnityAds",
            targets: ["AdstirAdsMediationAdapterUnityAdsTarget"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/united-adstir/adstirsdk-swift-package.git",
            exact: "2.17.9"
        ),
        .package(
            url: "https://github.com/Unity-Technologies/Unity-Ads-Swift-Package.git",
            exact: "4.17.0"
        ),
    ],
    targets: [
        .target(
            name: "AdstirAdsMediationAdapterUnityAdsTarget",
            dependencies: [
                .target(name: "UnityAdsAdapter"),
                .product(name: "UnityAds", package: "Unity-Ads-Swift-Package"),
                .product(name: "AdstirAds", package: "adstirsdk-swift-package"),
            ],
            path: "Sources/AdstirSDKMediationAdapterUnityAds-Swift-Package"
        ),
        .binaryTarget(
            name: "UnityAdsAdapter",
            url: "https://dl.ad-stir.com/sdk/spm/2.17.9/AdstirAdsMediationAdapterUnityAds.xcframework.zip",
            checksum: "dff541dc615ad4c43fe6adbadedf7b7d39db613409e65a16df3c5c48cdc4da59"
        ),
    ]
)
