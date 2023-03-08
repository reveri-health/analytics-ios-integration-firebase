// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "SegmentFirebase",
    platforms: [.iOS(.v11)],
    products: [.library(name: "SegmentFirebase", targets: ["SegmentFirebase"])],
    dependencies: [
      .package(url: "https://github.com/segmentio/analytics-ios.git", exact: "4.1.8"),
      .package(url: "https://github.com/reveri-health/firebase-ios-sdk-xcframeworks", exact: "10.2.0")
    ],
    targets: [
        .target(
            name: "SegmentFirebase",
            dependencies: [
                .product(name: "Segment", package: "analytics-ios"),
                .product(name: "FirebaseAnalytics", package: "firebase-ios-sdk-xcframeworks")
            ],
            path: "Segment-Firebase/Classes",
            publicHeadersPath: ""
        )
    ]
)
