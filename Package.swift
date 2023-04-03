// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "SegmentFirebase",
    platforms: [.iOS(.v11)],
    products: [.library(name: "SegmentFirebase", targets: ["SegmentFirebase"])],
    dependencies: [
      .package(url: "https://github.com/segmentio/analytics-ios.git", from: "4.1.8"),
      // NOTE: The repackaging of the firebase sdk results in a mismatch in name and a duplicate firebase package dependency without the deprecated named version
      // NOTE: There may be a workaround for this to fix the identity between the app dependency and the analytics dependency but skipping research for time
      .package(name: "firebase-ios-sdk", url: "https://github.com/reveri-health/firebase-ios-sdk-xcframeworks", branch: "release/10.7.0")
    ],
    targets: [
        .target(
            name: "SegmentFirebase",
            dependencies: [
                .product(name: "Segment", package: "analytics-ios"),
                .product(name: "FirebaseAnalytics", package: "firebase-ios-sdk")
            ],
            path: "Segment-Firebase/Classes",
            publicHeadersPath: ""
        )
    ]
)
