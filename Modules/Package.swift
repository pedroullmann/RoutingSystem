// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "Modules",
    platforms: [.iOS(.v15)],
    products: [
        // MARK: - System
        .library(name: "RoutingSystem", targets: ["RoutingSystem"]),

        // MARK: - Features
        .library(name: "FeatureA", targets: ["FeatureA"]),
        .library(name: "FeatureB", targets: ["FeatureB"]),
        .library(name: "FeatureC", targets: ["FeatureC"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/pointfreeco/swift-composable-architecture.git",
            from: "0.47.2"
        )
    ],
    targets: [
        // MARK: - System
        .target(
            name: "RoutingSystem",
            dependencies: [
                .product(
                    name: "Dependencies",
                    package: "swift-composable-architecture"
                )
            ]
        ),

        // MARK: - Features
        .target(name: "FeatureA", dependencies: ["RoutingSystem"]),
        .target(name: "FeatureB", dependencies: []),
        .target(name: "FeatureC", dependencies: []),
    ]
)
