// swift-tools-version:5.1

import PackageDescription

let package = Package(name: "UIKitCore",
                      platforms: [.iOS(.v10)],
                      products: [.library(name: "UIKitCore",
                                          targets: ["UIKitCore"])],
                      targets: [.target(name: "UIKitCore",
                                        path: "Source"),
                                .testTarget(name: "UIKitCoreTests",
                                            dependencies: ["UIKitCore"],
                                            path: "Tests")],
                      swiftLanguageVersions: [.v5])
