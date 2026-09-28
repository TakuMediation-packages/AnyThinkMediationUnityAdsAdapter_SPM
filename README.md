# Taku (AnyThink) - iOS Unity Ads Mediation Adapter

The Taku (AnyThink) Unity Ads mediation adapter for iOS, distributed via Swift Package Manager.

## Requirements

- iOS 13.0+
- Xcode 15.0+
- Taku (AnyThink) iOS Core SDK (`AnyThinkiOS`) 6.5.0+

## Installation

### Xcode

1. In Xcode, choose **File > Add Package Dependencies…**
2. Enter the repository URL:
   ```
   https://github.com/TakuMediation-packages/AnyThinkMediationUnityAdsAdapter_SPM
   ```
3. Select **Exact Version** and enter the target version (e.g. `4.19.0-2.0`).
4. Add the `AnyThinkMediationUnityAdsAdapter` product to your app target.
5. In your target's **Build Settings**, add `-ObjC` to **Other Linker Flags**.

### Package.swift

```swift
dependencies: [
    .package(
        url: "https://github.com/TakuMediation-packages/AnyThinkMediationUnityAdsAdapter_SPM.git",
        exact: "4.19.0-2.0"
    )
]
```

## Included dependencies

- [`AnyThinkiOS`](https://github.com/TakuMediation-packages/AnyThinkiOS_SPM) (>= 6.5.0)
- [`UnityAds`](https://github.com/Unity-Technologies/Unity-Ads-Swift-Package) (pinned to the version certified for this adapter release)

## More information

- [Taku (AnyThink) iOS Integration Guide](https://help.takuad.com)
