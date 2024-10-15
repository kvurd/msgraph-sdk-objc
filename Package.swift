// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MSGraphClientSDK",
    products: [
        .library(
            name: "MSGraphClientSDK",
            targets: [
                "MSGraphClientSDK_SPM"
            ]
        ),
    ],

    // rename the main target to avoid the incomplete MSGraphClientModels.h
    // header being picked automatically as an umbrella header
    targets: [
        .target(
            name: "MSGraphClientSDK_SPM",
            path: "MSGraphClientSDK/MSGraphClientSDK",
            cSettings: [
                .headerSearchPath("Authentication"),
                .headerSearchPath("Common"),
                .headerSearchPath("Common/Session Tasks"),
                .headerSearchPath("GraphContent/BatchContent"),
                .headerSearchPath("GraphTasks"),
                .headerSearchPath("HTTPClient"),
                .headerSearchPath("Middleware/Implementations/Authentication"),
                .headerSearchPath("Middleware/Implementations/HTTPProvider"),
                .headerSearchPath("Middleware/Implementations/RedirectHandler"),
                .headerSearchPath("Middleware/Implementations/RetryHandler"),
                .headerSearchPath("Middleware/Options"),
                .headerSearchPath("Middleware/Protocols"),
            ]
        )
    ]
)
