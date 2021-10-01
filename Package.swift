// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "KRProgressHUD",
    platforms: [.iOS(.v9)],
    products: [
        .library(
            name: "KRProgressHUD",
            targets: ["KRProgressHUD"]),
    ],
    dependencies: [
        .package(url: "https://github.com/nipapadak/KRActivityIndicatorView.git", .branch("release-3.0.7-rb"))
    ],
    targets: [
        .target(
            name: "KRProgressHUD",
            dependencies: ["KRActivityIndicatorView"],
            path: "KRProgressHUD/Classes"
        ),
        .testTarget(
            name: "KRProgressHUDTests",
            dependencies: ["KRProgressHUD", "KRActivityIndicatorView"],
            path: "KRProgressHUDTests",
            exclude: ["Info.plist"]
        ),
    ]
)
