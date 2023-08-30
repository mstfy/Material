// swift-tools-version:4.2
import PackageDescription

let package = Package(
    name: "Material",
    // platforms: [.iOS("8.0")],
    products: [
        .library(name: "Material", targets: ["Material"])
    ],
    dependencies: [
        .package(url: "https://github.com/mstfy/Motion", .branchItem("master")),
    ],
    targets: [
        .target(
            name: "Material",
            dependencies: ["MotionSDK"],
            path: "Sources",
            exclude: ["Frameworks"]
        )
    ]
)
