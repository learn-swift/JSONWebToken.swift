import PackageDescription


#if os(macOS) || os(iOS) || os(watchOS) || os(tvOS)
let package = Package(
  name: "JWT",
  dependencies: [
    .Package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", majorVersion: 0, minor: 7),
  ],
  exclude: [
    "Sources/JWT/HMACCryptoSwift.swift",
  ]
)
#else
let package = Package(
  name: "JWT",
  dependencies: [
    .Package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", majorVersion: 0, minor: 7),
  ],
  exclude: [
    "Sources/JWT/HMACCommonCrypto.swift",
  ]
)
#endif
