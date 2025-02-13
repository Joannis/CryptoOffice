// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to
// build this package.

import PackageDescription

let package = Package(
  name: "CryptoOffice",
  platforms: [
    .macOS(.v10_15),
    .iOS(.v13),
    .tvOS(.v13),
    .watchOS(.v6),
  ],
  products: [
    // Products define the executables and libraries produced by a package,
    // and make them visible to other packages.
    .library(
      name: "CryptoOffice",
      targets: ["CryptoOffice"]
    ),
  ],
  dependencies: [
    // Dependencies declare other packages that this package depends on.
    // .package(url: /* package url */, from: "1.0.0"),
    .package(url: "https://github.com/apple/swift-crypto.git", from: "1.0.1"),
    .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", from: "1.5.1"),
    .package(url: "https://github.com/CoreOffice/XMLCoder.git", .upToNextMinor(from: "0.14.0")),
    .package(url: "https://github.com/CoreOffice/OLEKit.git", .upToNextMinor(from: "0.1.0")),
    .package(url: "https://github.com/weichsel/ZIPFoundation.git", .upToNextMinor(from: "0.9.11")),
  ],
  targets: [
    // Targets are the basic building blocks of a package. A target can define
    // a module or a test suite.
    // Targets can depend on other targets in this package, and on products in
    // packages which this package depends on.
    .target(name: "CryptoOffice", dependencies: ["Crypto", "CryptoSwift", "OLEKit", "XMLCoder"]),
    .testTarget(name: "CryptoOfficeTests", dependencies: ["CryptoOffice", "ZIPFoundation"]),
  ]
)
