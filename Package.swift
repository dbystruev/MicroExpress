// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.
//  http://www.alwaysrightinstitute.com/microexpress/
//  docker run -p 1337:1337 -it --name MicroExpress -v ~/MicroExpress:/MicroExpress -w/MicroExpress swift:4.0 /bin/bash

import PackageDescription

let package = Package(
    name: "MicroExpress",
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/swift-server/http", from: "0.1.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "MicroExpress",
            dependencies: ["HTTP"]),
    ]
)
