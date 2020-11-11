// swift-tools-version:5.0
import PackageDescription

let package = Package(
  name: "Swime",
  platforms: [
    .iOS(.v9),
    .macOS(.v10_10)
  ],
  products: [
    .library(name: "Swime", targets: ["Swime"])
  ],
  dependencies: [
    .package(url: "https://github.com/Quick/Quick", from: "2.0.0"),
    .package(url: "https://github.com/Quick/Nimble", from: "8.0.0")
  ],
  targets: [
    .target(
      name: "Swime",
      path: "./Sources"
   ),
    .testTarget(
      name: "SwimeTests",
      dependencies: [
        "Swime",
        "Quick",
        "Nimble"
      ]
    )
  ]
)
