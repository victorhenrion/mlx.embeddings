// swift-tools-version: 6.0

import PackageDescription

let package = Package(
  name: "mlx_embeddings",
  platforms: [.macOS(.v14), .iOS(.v16)],
  products: [
    .library(
      name: "mlx_embeddings",
      targets: ["mlx_embeddings"])
  ],
  dependencies: [
    .package(url: "https://github.com/ml-explore/mlx-swift", exact: "0.25.5"),
    .package(url: "https://github.com/huggingface/swift-transformers", exact: "0.1.22"),
    .package(url: "https://github.com/ml-explore/mlx-swift-examples", exact: "2.25.6"),

  ],
  targets: [
    .target(
      name: "mlx_embeddings",
      dependencies: [
        .product(name: "MLX", package: "mlx-swift"),
        .product(name: "MLXFast", package: "mlx-swift"),
        .product(name: "MLXNN", package: "mlx-swift"),
        .product(name: "MLXOptimizers", package: "mlx-swift"),
        .product(name: "MLXRandom", package: "mlx-swift"),
        .product(name: "MLXLinalg", package: "mlx-swift"),
        .product(name: "MLXLMCommon", package: "mlx-swift-examples"),
        .product(name: "Transformers", package: "swift-transformers"),
      ]),
    .testTarget(
      name: "mlx.embeddingsTests",
      dependencies: ["mlx_embeddings"]
    ),
  ]
)
