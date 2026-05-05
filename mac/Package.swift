// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "CodeBurnMenubar",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .executable(name: "CodeBurnMenubar", targets: ["CodeBurnMenubar"])
    ],
    targets: [
        .executableTarget(
            name: "CodeBurnMenubar",
            path: "Sources/CodeBurnMenubar"
        ),
        .testTarget(
            name: "CodeBurnMenubarTests",
            dependencies: ["CodeBurnMenubar"],
            path: "Tests/CodeBurnMenubarTests"
        )
    ]
)
