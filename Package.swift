// swift-tools-version:5.2
import PackageDescription

//init(name:platforms:pkgConfig:providers:products:dependencies:targets:swiftLanguageVersions:cLanguageStandard:cxxLanguageStandard:)
let package = Package(
    name: "ZipArchive",
    platforms: [
        //.macOS(.v10_10), .iOS(.v10), .tvOS(.v10), .watchOS(.v4)
        .iOS(.v10)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "ZipArchive", 
            //targets: ["ZipArchive-tvos", "ZipArchive-iOS", "ZipArchive-Mac", "ZipArchive-watchos"]
            targets: ["ZipArchive-iOS"]
         )
    ],
    targets: [
            // Targets are the basic building blocks of a package. A target can define a module or a test suite.
            // Targets can depend on other targets in this package, and on products in packages which this package depends on.
            .target(name: "ZipArchive-iOS", path:"./Sources")
    //        .target(name: "ZipArchive-Mac", path:"./Sources"),
    //       .target(name: "ZipArchive-tvos", path:"./Sources"),
    //      .target(name: "ZipArchive-watchos", path:"./Sources")
    ],
    swiftLanguageVersions: [.v4]
)
