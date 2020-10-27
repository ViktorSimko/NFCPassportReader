// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let dependencies: [PackageDescription.Package.Dependency] = [
    .package(url: "https://github.com/ViktorSimko/OpenSSL", .branch("master")),
]

let libraryTarget = PackageDescription.Target.target(
  name: "NFCRMTDReader",
  dependencies: ["OpenSSL"]
)

let package = Package(
  name: "NFCRMTDReader",
  platforms: [.iOS(.v11), .macOS(.v10_13)],
  products: [
    .library(
      name: "NFCRMTDReader",
      targets: ["NFCRMTDReader"]),
  ],
  dependencies: dependencies,
  targets: [libraryTarget]
)
