# iOSPOC — iOS Proof of Concept & Algorithms Reference

[![Swift](https://img.shields.io/badge/Swift-6.0-orange.svg?style=flat&logo=swift)](https://developer.apple.com/swift/)
[![Xcode](https://img.shields.io/badge/Xcode-14.0+-blue.svg?style=flat&logo=xcode)](https://developer.apple.com/xcode/)
[![Platform](https://img.shields.io/badge/Platform-iOS-lightgrey.svg?style=flat&logo=apple)](https://developer.apple.com/ios/)

An extensive iOS Proof of Concept (POC) workspace and comprehensive Data Structures & Algorithms sandbox implemented in Swift and Objective-C by **Rahul Goel**.

---

## 📋 Table of Contents
- [About the Project](#about-the-project)
- [Repository Structure](#repository-structure)
- [Key Modules & Architecture](#key-modules--architecture)
  - [1. Networking Layer](#1-networking-layer)
  - [2. Image Downloader & Cache](#2-image-downloader--cache)
  - [3. Feature Architecture (Home Module)](#3-feature-architecture-home-module)
  - [4. Objective-C Interoperability](#4-objective-c-interoperability)
  - [5. Data Structures & Algorithms Catalog](#5-data-structures--algorithms-catalog)
- [System Diagrams](#system-diagrams)
- [Getting Started](#getting-started)
- [Testing](#testing)
- [Documentation & AI Conventions](#documentation--ai-conventions)

---

## 💡 About the Project

`iOSPOC` serves a dual purpose:
1. **iOS Platform & Architecture Playground**: Demonstrates foundational and production-grade iOS architectural patterns, custom networking layers, image caching, memory management (ARC/retain cycle prevention), local and push notifications, UI component layouts (AutoLayout, UIStackView, Storyboards), and Objective-C/Swift bridging.
2. **Competitive Programming & Algorithms Catalog**: A organized repository of data structures and LeetCode problem solutions written in Swift across 25 distinct algorithmic categories.

---

## 📂 Repository Structure

```
iOSPOC/
├── README.md                 # Primary project documentation
├── SPECIFICATION.md          # Full technical specification document
├── AGENTS.md                 # AI agent rules & token optimization guidelines
├── Diagrams/                 # SVG architecture and sequence diagrams
│   ├── architecture.svg
│   ├── booking_system_em_ios.svg
│   └── invite_sequence.svg
├── iOSPOC.xcodeproj/         # Xcode project configuration
├── iOSPOC/                   # Primary source target
│   ├── AppDelegate.swift     # App entry point & lifecycle
│   ├── Info.plist            # App target metadata
│   ├── Common/               # Shared base classes (TRGBaseViewController)
│   ├── NetworkLayer/         # REST API client & parser enums
│   ├── ImageDownloader/      # Async image cache & downloader
│   ├── MemoryManagement/     # ARC & memory leak prevention demos
│   ├── ObjectiveC/           # Objective-C bridging header & controllers
│   ├── LocalDataStore/       # UserDefaults, Plist, CoreData persistence
│   ├── LocalNotifications/   # Local notification triggers
│   ├── PushNotifications/    # Push notification setup
│   ├── Home/                 # MVVM/MVC feature module (C, M, V)
│   ├── Autolayout/           # Programmatic AutoLayout examples
│   ├── StackView/            # UIStackView implementations
│   ├── StoryBoard/           # Interface Builder storyboards & xibs
│   ├── Algorithms/           # Algorithmic & Data Structures library
│   └── Playgrounds/          # Swift Playgrounds
├── iOSPOCTests/              # XCTest unit test suite
└── iOSPOCUITests/            # XCTest UI test suite
```

---

## 🛠️ Key Modules & Architecture

### 1. Networking Layer
Located in `iOSPOC/NetworkLayer/`:
* **`TRGNetworkAPIManager`**: Singleton HTTP client using `URLSession`.
* Provides typed enums for HTTP methods (`TRGRequestType`), MIME types (`TRGMIMEType`), and status codes (`TRGHttpStatusCode`).

### 2. Image Downloader & Cache
Located in `iOSPOC/ImageDownloader/`:
* **`TRGImageCacheManager`**: In-memory caching manager for efficient image downloading and display.

### 3. Feature Architecture (Home Module)
Located in `iOSPOC/Home/`:
* Structured using clean MVVM / MVC patterns:
  * **`C/`**: `HomeViewController.swift`, `HomeDetailViewController.swift`
  * **`M/`**: `HomeViewModel.swift`
  * **`V/`**: `HomeTableViewImageCell.swift`, `HomeTableCollectionViewCell.swift`

### 4. Objective-C Interoperability
Located in `iOSPOC/ObjectiveC/`:
* Exposes Objective-C classes (`ObjectiveCViewController.h/.m`) to Swift using [iOSPOC-Bridging-Header.h](file:///Users/rahulgoel/iOSPOC/iOSPOC/ObjectiveC/iOSPOC-Bridging-Header.h).

### 5. Data Structures & Algorithms Catalog
Located in `iOSPOC/Algorithms/`:
Organized into 25 dedicated topic folders:
* 🟢 **Arrays & Matrices**: 3Sum, Product of Array Except Self, Pascal's Triangle, Matrix Transformations.
* 🌲 **Trees & Graphs**: AVL Trees, BST operations, Traversals, BFS, DFS.
* ⚡ **Sorting & Searching**: Binary Search, Quick Sort, Merge Sort, Heap Sort.
* 📦 **Data Structures**: Stacks, Queues, Heaps, Tries, Linked Lists, Segment Trees.
* 🧮 **Dynamic Programming & Backtracking**: N-Queens, Subsets, Memoization problems.

---

## 🎨 System Diagrams

System architecture and flow diagrams are maintained under `Diagrams/`:
- **Architecture Overview**: `Diagrams/architecture.svg`
- **Booking Domain Model**: `Diagrams/booking_system_em_ios.svg`
- **Invite Sequence Diagram**: `Diagrams/invite_sequence.svg`

---

## 🚀 Getting Started

### Prerequisites
- macOS with Xcode 14.0 or later installed.
- Swift 5.0+ runtime support.

### Building & Running
1. Clone the repository:
   ```bash
   git clone https://github.com/therahulgoel/iOSPOC.git
   cd iOSPOC
   ```
2. Open the project in Xcode:
   ```bash
   open iOSPOC.xcodeproj
   ```
3. Select your target simulator (e.g. iPhone 15 Pro) and press **Cmd + R** to build and run.

---

## 🧪 Testing

Run the test suites directly inside Xcode via **Cmd + U** or execute via command line:
```bash
xcodebuild test -scheme iOSPOC -destination 'platform=iOS Simulator,name=iPhone 15 Pro'
```

---

## 📖 Documentation & AI Conventions

- **[SPECIFICATION.md](file:///Users/rahulgoel/iOSPOC/SPECIFICATION.md)**: Full technical documentation of repository components.
- **[AGENTS.md](file:///Users/rahulgoel/iOSPOC/AGENTS.md)**: Rules and token optimization guidelines for AI coding assistants.

---

## 👤 Author
**Rahul Goel** — *iOS Developer & Software Engineer*