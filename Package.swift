// swift-tools-version: 5.10

import PackageDescription

let baseURL = "https://github.com/adison-ads/cookie-oven-webtoon"
let artifactVer = "3.8.6"
let checksum = "6c2821abb30966d5c1edc028f99cc1d3825dd96a6d830d512120e18d8182c361"

let package = Package(
    name: "CookieOvenWebtoon",
    products: [
        .library(
            name: "CookieOvenWebtoon",
            targets: ["BinaryWrapper"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/adison-ads/adison-offerwall-ios-sdk", exact: "4.8.4")
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
