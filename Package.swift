// swift-tools-version: 5.10

import PackageDescription

let baseURL = "https://github.com/adison-ads/cookie-oven-webtoon"
let artifactVer = "3.7.6"
let checksum = "93bec1e8fc329b9efd671031d067ebfddb474475f8780db6d67b4875260862a0"

let package = Package(
    name: "CookieOvenWebtoon",
    products: [
        .library(
            name: "CookieOvenWebtoon",
            targets: ["BinaryWrapper"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/adison-ads/adison-offerwall-ios-sdk", exact: "4.7.4")
    ],
    targets: [
        .target(
            name: "BinaryWrapper",
            dependencies: [
                "CookieOvenWebtoon",
                .product(name: "AdisonOfferwallSDK", package: "adison-offerwall-ios-sdk"),
            ],
            path: "Sources/_Stub"
        ),
        .binaryTarget(
            name: "CookieOvenWebtoon",
            url: "\(baseURL)/releases/download/\(artifactVer)/CookieOvenWebtoon.zip",
            checksum: checksum
        ),
    ]
)
