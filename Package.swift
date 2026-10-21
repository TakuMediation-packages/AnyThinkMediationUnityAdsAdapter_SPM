// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AnyThinkMediationUnityAdsAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "AnyThinkMediationUnityAdsAdapter",
            targets: ["AnyThinkMediationUnityAdsAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/TakuMediation-packages/AnyThinkiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/Unity-Technologies/Unity-Ads-Swift-Package.git", exact: "4.19.0")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkUnityAdsAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/AnyThink_Release/iosnetwork_2/AnyThinkUnityAdsAdapter/4.20.1.2.9/AnyThinkUnityAdsAdapter-4.20.1.2.9.zip",
            checksum: "2f2df1b0048ba4482194f67abc4534f32b270e4cb5582f4e048667740f1abb96"
        ),
        .target(
            name: "AnyThinkMediationUnityAdsAdapterTarget",
            dependencies: [
                "AnyThinkUnityAdsAdapter",
                .product(name: "AnyThinkiOS", package: "AnyThinkiOS_SPM"),
                .product(name: "UnityAds", package: "Unity-Ads-Swift-Package")
            ],
            path: "Sources/AnyThinkMediationUnityAdsAdapterTarget"
        )
    ]
)
