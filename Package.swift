// swift-tools-version: 5.10

import PackageDescription

let baseURL = "https://github.com/adison-ads/cookie-oven-webtoon"
let artifactVer = "3.7.10"
let checksum = "b0d5c6ab497e861235e02831ac557465cfb2ced655fb013f1ec4426bdf5f9b23"

let package = Package(
    name: "CookieOvenWebtoon",
    products: [
        .library(
            name: "CookieOvenWebtoon",
            targets: ["BinaryWrapper"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/adison-ads/adison-offerwall-ios-sdk", exact: "4.7.6")
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
