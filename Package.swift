// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let dependencies: [PackageDescription.Package.Dependency] = [
    .package(url: "https://github.com/ViktorSimko/OpenSSL", .branch("master")),
]

let libraryTarget = PackageDescription.Target.target(
  name: "NFCMRTDReader",
  dependencies: ["OpenSSL"]
)

let package = Package(
  name: "NFCMRTDReader",
  platforms: [.iOS(.v11)],
  products: [
    .library(
      name: "NFCMRTDReader",
      targets: ["NFCMRTDReader"]),
  ],
  dependencies: dependencies,
  targets: [libraryTarget]
)
