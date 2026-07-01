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
            exact: "2.17.7"
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
            url: "https://dl.ad-stir.com/sdk/spm/2.17.7/AdstirAdsMediationAdapterUnityAds.xcframework.zip",
            checksum: "c69ab3ba9ccf9508f22d2a313cbe6f21b73c34e2e97dbd6149088470945fefc7"
        ),
    ]
)
