// swift-tools-version: 5.10

import PackageDescription

let baseURL = "https://github.com/adison-ads/cookie-oven-webtoon"
let artifactVer = "3.7.0"
let checksum = "90491392219fcd3e676780e070beba73356a876f6a74e962dfad3f43f973dcfb"

let package = Package(
    name: "CookieOvenWebtoon",
    products: [
        .library(
            name: "CookieOvenWebtoon",
            targets: ["BinaryWrapper"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/adison-ads/adison-offerwall-ios-sdk", exact: "4.7.0")
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
