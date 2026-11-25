# iOSPOC Technical Specification

## 1. Overview & Purpose
`iOSPOC` is an iOS Proof of Concept (POC) and algorithmic reference workspace designed by Rahul Goel. The repository serves as a dual-purpose environment:
1. **iOS Platform Reference Application**: Demonstrates architectural patterns (MVC/MVVM), networking, asynchronous image caching, persistence, UI layouts (AutoLayout, UIStackView, Storyboards), memory management, notifications, and Objective-C/Swift interoperability.
2. **Data Structures & Algorithms Library**: Provides comprehensive implementations of competitive programming solutions and classic computer science algorithms written in Swift.

---

## 2. Tech Stack & Prerequisites
* **Primary Language**: Swift
* **Secondary Language**: Objective-C (interoperability layer)
* **Frameworks**: Foundation, UIKit, CoreData, UserNotifications, XCTest
* **Build System & IDE**: Xcode (`iOSPOC.xcodeproj`)
* **Target OS**: iOS

---

## 3. Repository Architecture & Layout

```
iOSPOC/
├── SPECIFICATION.md          # Complete repository technical specification
├── AGENTS.md                 # Instructions & token optimization rules for AI agents
├── README.md                 # Main project README
├── Diagrams/                 # SVG architecture and system sequence diagrams
│   ├── architecture.svg
│   ├── booking_system_em_ios.svg
│   └── invite_sequence.svg
├── iOSPOC.xcodeproj/         # Xcode project workspace configuration
├── iOSPOC/                   # Primary source code target
│   ├── AppDelegate.swift     # Application entry point
│   ├── Info.plist            # App target configuration
│   ├── Common/               # Shared base classes (e.g. TRGBaseViewController)
│   ├── NetworkLayer/         # REST API networking engine
│   ├── ImageDownloader/      # Async image downloader & cache manager
│   ├── MemoryManagement/     # ARC leak & weak/unowned reference demonstrations
│   ├── ObjectiveC/           # Objective-C bridging and legacy controllers
│   ├── LocalDataStore/       # Persistence (UserDefaults, Plist, CoreData)
│   ├── LocalNotifications/   # Local notification handling
│   ├── PushNotifications/    # APNs payload and registration setup
│   ├── Home/                 # UI Feature module (Controllers, ViewModels, Views)
│   ├── Autolayout/           # AutoLayout programmatic & constraint examples
│   ├── StackView/            # UIStackView UI layout examples
│   ├── StoryBoard/           # Interface Builder storyboards & xibs
│   ├── Algorithms/           # Algorithmic & Data Structures library (25 categories)
│   └── Playgrounds/          # Interactive Swift playgrounds
├── iOSPOCTests/              # Unit test target (XCTest)
└── iOSPOCUITests/            # UI test target (XCTest)
```

---

## 4. Key Architectural Modules

### 4.1 Networking Layer (`iOSPOC/NetworkLayer/`)
* **TRGNetworkAPIManager**: Centralized HTTP request executor built on top of `URLSession`.
* **Types**:
  * `TRGRequestType`: `GET`, `POST`, `PUT`, `DELETE`.
  * `TRGMIMEType`: `image`, `application/json`.
  * `TRGHttpStatusCode`: `Success (200)`, `BadRequest (400)`, `AuthError (401)`, `ServerError (500)`.
* **Methods**:
  * `executeRequest(url:methodType:completion:)`: Fetches and validates JSON responses.
  * `downloadImage(url:completion:)`: Downloads image payload.

### 4.2 Image Downloader (`iOSPOC/ImageDownloader/`)
* **TRGImageCacheManager**: Singleton utility providing memory caching for downloaded network images to avoid duplicate network calls.

### 4.3 Objective-C Interoperability (`iOSPOC/ObjectiveC/`)
* **Bridging Header**: `iOSPOC-Bridging-Header.h` exposes Objective-C headers (such as `ObjectiveCViewController.h`) to the Swift runtime.

### 4.4 Feature Layer (`iOSPOC/Home/`)
* **Pattern**: Modularized structure containing:
  * `C/`: ViewControllers (`HomeViewController`, `HomeDetailViewController`).
  * `M/`: Models and ViewModels (`HomeViewModel`).
  * `V/`: Custom table/collection view cells (`HomeTableViewImageCell`, `HomeTableCollectionViewCell`).

### 4.5 Algorithms & Data Structures Catalog (`iOSPOC/Algorithms/`)
Contains 25 specialized sub-directories:
1. `Array/`: Array manipulation, sliding window, two-pointer algorithms.
2. `AVLTree/`: Self-balancing binary search tree.
3. `Backtracking/`: Permutations, combinations, N-Queens.
4. `Binary Search/`: Logarithmic searching algorithms.
5. `BinarySearchTree/`: BST insertion, deletion, searching.
6. `BinaryTree/`: Tree traversals, depth/height calculations.
7. `Breadth First Search/`: Level-order traversals and shortest path algorithms.
8. `Data Compression/`: Encoding and decoding mechanisms.
9. `Design/`: Custom data structure design (LRU Cache, MinStack).
10. `DivideAndConquer/`: Merge sort, quick select.
11. `Dynamic/`: Memoization and tabular dynamic programming.
12. `Graphs/`: Adjacency list representation, topological sort.
13. `Greedy/`: Optimal local choice algorithms.
14. `Heaps/`: Min-heap and max-heap implementations.
15. `LinkedList/`: Singly and doubly linked list manipulation.
16. `Maths/`: Number theory, prime sieves, GCD.
17. `Matrix/`: 2D matrix transformations and traversals.
18. `Patterns/`: Algorithmic design patterns.
19. `Queue/`: Custom Queue data structures.
20. `Recursion/`: Recursive problem solving.
21. `Segment Tree/`: Range query data structures.
22. `Sorting/`: Bubble, insertion, merge, and quick sort algorithms.
23. `Stack/`: LIFO stack implementations.
24. `String/`: String parsing, anagrams, palindrome algorithms.
25. `Trie/`: Prefix tree for fast dictionary lookups.

---

## 5. Architectural Diagrams (`Diagrams/`)
The `Diagrams/` directory contains visual architectural specifications in SVG format:
* `architecture.svg`: High-level iOS app layering diagram.
* `booking_system_em_ios.svg`: Domain model diagram for booking features.
* `invite_sequence.svg`: Sequence diagram outlining flow between client and backend.

---

## 6. Testing Strategy
* **Unit Tests (`iOSPOCTests`)**: Verifies algorithm correctness and data structure operations using `XCTest`.
* **UI Tests (`iOSPOCUITests`)**: Validates screen transitions, cell interactions, and view rendering.
