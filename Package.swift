// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SingleSwiftRepo",
    products: [
        // Define your libraries as products so they can be used externally
        .library(name: "MonoRepoCore", targets: ["MonoRepoCore"]),
        .library(name: "MonoRepoNetworking", targets: ["MonoRepoNetworking"]),
    ],
    dependencies: [
        // If you had external dependencies, they would go here
    ],
    targets: [
        // --- Core Target ---
        .target(
            name: "MonoRepoCore",
            path: "MonoRepoCore"
            dependencies: [] // Core has no internal dependencies in this example
        ),

        // --- Networking Target ---
        .target(
            name: "MonoRepoNetworking",
            path: "MonoRepoNetworking"
            dependencies: ["MonoRepoCore"] // 👈 **Networking depends on Core**
        )
    ]
)
