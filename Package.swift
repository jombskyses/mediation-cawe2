// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "MediationCawe2",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "MediationCawe2",
            targets: ["MediationPluginPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0")
    ],
    targets: [
        .target(
            name: "MediationPluginPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/MediationPluginPlugin"),
        .testTarget(
            name: "MediationPluginPluginTests",
            dependencies: ["MediationPluginPlugin"],
            path: "ios/Tests/MediationPluginPluginTests")
    ]
)