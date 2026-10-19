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
            exact: "2.17.8"
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
            url: "https://dl.ad-stir.com/sdk/spm/2.17.8/AdstirAdsMediationAdapterUnityAds.xcframework.zip",
            checksum: "713f85beea9ca9d9cb12ba8d8f38f644f5126478abb83e8a089f39a477a108e7"
        ),
    ]
)
