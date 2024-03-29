// Copyright 2017 The Bazel Authors. All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import UIKit
import Bindings

// Shim to compile with older Xcodes.
#if !swift(>=4.2)
extension UIApplication {
  typealias LaunchOptionsKey = UIApplicationLaunchOptionsKey
}
#endif

/// The ``AppDelegate`` for the application.
/// This class is the entry point for the application and is responsible for the lifecycle of it.
@UIApplicationMain
public class AppDelegate: NSObject, UIApplicationDelegate {

  /// The window of the application.
  public var window: UIWindow?

  /// The start of the application.
  public func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions: [UIApplication.LaunchOptionsKey : Any]?
  ) -> Bool {
    fromBindings()
    return true
  }

  /// A foo API to test DooC documentation generation.
  ///
  /// Example referencing ``AppDelegate``:
  ///
  /// ```swift
  /// let appDelegate = AppDelegate()
  /// ```
  public func foo() { }
}
