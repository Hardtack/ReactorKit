// swift-tools-version:3.1

import Foundation
import PackageDescription

let isTest = ProcessInfo.processInfo.environment["TEST"] == "1"
let dependencies: [Target.Dependency]
if !isTest {
  dependencies = [
    .Package(url: "https://github.com/ReactiveX/RxSwift.git", majorVersion: 3),
  ]
} else {
  dependencies = [
    .Package(url: "https://github.com/devxoul/RxSwift.git", majorVersion: 3),
    .Package(url: "https://github.com/devxoul/RxExpect.git", majorVersion: 0),
  ]
}

let package = Package(
  name: "ReactorKit",
  dependencies: dependencies
)
