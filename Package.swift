// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "fluent",
    products: [
        .library(name: "Fluent", targets: ["Fluent"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/fluent-kit.git", .branch("master")),
        .package(url: "https://github.com/vapor/vapor.git", .branch("master")),
    ],
    targets: [
        .target(name: "Fluent", dependencies: ["FluentKit", "Vapor"]),
        .testTarget(name: "FluentTests", dependencies: ["Fluent"]),
    ]
)
