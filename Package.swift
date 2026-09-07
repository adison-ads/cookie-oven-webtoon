// swift-tools-version: 5.10

import PackageDescription

let baseURL = "https://github.com/adison-ads/cookie-oven-webtoon"
let artifactVer = "3.8.2"
let checksum = "8f42adaf4980ee8069c27ecc24d237f1c353aebaec1e51c763ed2566fba0fcda"

let package = Package(
    name: "CookieOvenWebtoon",
    products: [
        .library(
            name: "CookieOvenWebtoon",
            targets: ["BinaryWrapper"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/adison-ads/adison-offerwall-ios-sdk", exact: "4.8.2")
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
