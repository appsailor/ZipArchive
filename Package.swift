// swift-tools-version:5.2
import PackageDescription

//init(name:platforms:pkgConfig:providers:products:dependencies:targets:swiftLanguageVersions:cLanguageStandard:cxxLanguageStandard:)
let package = Package(
    name: "ZipArchive",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "ZipArchive", 
            targets: ["ZipArchive-iOS"]
         )
    ],
    targets: [
            // Targets are the basic building blocks of a package. A target can define a module or a test suite.
            // Targets can depend on other targets in this package, and on products in packages which this package depends on.
            .target(name: "ZipArchive-iOS", path: ".", sources:["Sources"], publicHeadersPath: "Sources")
    ],
    swiftLanguageVersions: [.v4]
)
