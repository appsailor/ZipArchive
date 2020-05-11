// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "ZipArchive",
    platforms: [
        .macOS(.v10_10), .iOS(.v10), .tvOS(.v10), .watchOS(.v4)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "ZipArchive", 
            path: "SSZipArchive",
            targets: ["ZipArchive-tvos", "ZipArchive-iOS", "ZipArchive-Mac", "ZipArchive-watchos"])
        ],
        dependencies: [
            // Dependencies declare other packages that this package depends on.
            // .package(url: /* package url */, from: "1.0.0"),
        ],
        targets: [
            // Targets are the basic building blocks of a package. A target can define a module or a test suite.
            // Targets can depend on other targets in this package, and on products in packages which this package depends on.
            .target(
                name: "ZipArchive-iOS"),
            .target(
                name: "ZipArchive-Mac"),
            .testTarget(
                name: "ZipArchive-tvos",
                dependencies: []),
            .testTarget(
                name: "ZipArchive-watchos",
                dependencies: []),
    ]
)
