// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SingleSwiftRepo",
    products: [
        // Define your libraries as products so they can be used externally
        .library(name: "MonoRepoCore", targets: ["MonoRepoCore"]),
        .library(name: "MonoRepoNetworking", targets: ["MonoRepoNetworking"]),
        .library(name: "Destination01", targets: ["Destination01"]),
        .library(name: "Destination02", targets: ["Destination02"])
    ],
    dependencies: [
        // If you had external dependencies, they would go here
    ],
    targets: [
        // --- Core Target ---
        .target(
            name: "MonoRepoCore",
            dependencies: [], // Core has no internal dependencies in this example
            path: "MonoRepoCore"
        ),

        // --- Networking Target ---
        .target(
            name: "MonoRepoNetworking",
            dependencies: ["MonoRepoCore"], // 👈 **Networking depends on Core**
            path: "MonoRepoNetworking"
        ),
        
        // --- Networking Target ---
        .target(
            name: "Destination01",
            dependencies: ["MonoRepoCore"], // 👈 **Destination01 depends on Core**
            path: "Destinations/Destination01"
        ),
        
        // --- Networking Target ---
        .target(
            name: "Destination02",
            dependencies: ["MonoRepoCore", "MonoRepoNetworking"], // 👈 **Destination02 depends on Core & Networking**
            path: "Destinations/Destination02"
        )
    ]
)
