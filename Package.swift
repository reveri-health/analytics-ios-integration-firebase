// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "SegmentFirebase",
    platforms: [.iOS(.v11)],
    products: [.library(name: "SegmentFirebase", targets: ["SegmentFirebase"])],
    dependencies: [
      .package(name: "Segment", url: "https://github.com/segmentio/analytics-ios.git", from: "4.1.3"),
      .package(name: "Firebase", url: "https://github.com/reveri-health/firebase-ios-sdk-xcframeworks.git", .exact("8.10.0")),
    ],
    targets: [
        .target(
            name: "SegmentFirebase",
            dependencies: [
              "Segment",
              .product(name: "FirebaseAnalytics", package: "Firebase"),
            ],
            path: "Segment-Firebase/Classes",
            publicHeadersPath: ""
        )
    ]
)
