// swift-tools-version: 5.10

import PackageDescription

let baseURL = "https://github.com/adison-ads"
let artifactVer = "3.7.0"
let checksum = "23h1uy45g1iug312y4fg18y4g1"

let package = Package(
    name: "CookieOvenWebtoon",
    products: [
        .library(
            name: "CookieOvenWebtoon",
            targets: [
                "CookieOvenWebtoon",
                "CookieOvenWebtoonTarget",
            ]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/adison-ads/adison-offerwall-ios-sdk", exact: "4.6.0")
    ],
    targets: [
        .binaryTarget(
            name: "CookieOvenWebtoon",
            url: "\(baseURL)/cookie-oven-webtoon/releases/download/\(artifactVer)/CookieOvenWebtoon.zip",
            checksum: checksum
        ),
        .target(
            name: "CookieOvenWebtoonTarget",
            dependencies: [
                .product(name: "AdisonOfferwallSDK", package: "adison-offerwall-ios-sdk")
            ],
            path: "Sources"
        ),
    ]
)
