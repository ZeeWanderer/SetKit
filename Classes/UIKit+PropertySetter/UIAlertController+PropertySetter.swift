//
//  UIAlertController+PropertySetter.swift
//
//  Copyright (c) 2023 camel-cased (https://www.linkedin.com/in/camel-cased)
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

import UIKit
import SetKitBase

// MARK: - UIAlertController
public extension PropertySetter where Base: UIAlertController {
  
  /// PropertySetter wrapper for `.message`
  /// - **Summary:**  Descriptive text that provides more details about the reason for the alert.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uialertcontroller/1620106-message) for more info.
  @discardableResult
  func message(_ message: String?) -> Self {
    base.message = message
    return self
  }
  
  /// PropertySetter wrapper for `.title`
  /// - **Summary:**  The title of the alert.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uialertcontroller/1620103-title) for more info.
  @discardableResult
  func title(_ title: String?) -> Self {
    base.title = title
    return self
  }
  
  /// PropertySetter wrapper for `.preferredAction`
  /// - **Summary:**  The preferred action for the user to take from an alert.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uialertcontroller/1620102-preferredaction) for more info.
  @discardableResult
  func preferredAction(_ action: UIAlertAction?) -> Self {
    base.preferredAction = action
    return self
  }
  
  /// PropertySetter wrapper for `.addAction(_:)`
  ///  - **Summary:**  Attaches an action object to the alert or action sheet.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uialertcontroller/1620094-addaction) for more info.
  ///
  /// **PropertSetter description**
  ///
  /// You can use ``SetKit/PropertySetter/actions(_:)`` wrapper to add multiple actions at a time.
  @discardableResult
  func action(_ action: UIAlertAction) -> Self {
    base.addAction(action)
    return self
  }
  
  /// Array-based PropertySetter wrapper for `.addAction(_:)`
  @discardableResult
  func actions(_ actions: [UIAlertAction]) -> Self {
    actions.forEach {
      base.addAction($0)
    }
    return self
  }
  
  /// PropertySetter wrapper for `.addTextField()`
  ///  - **Summary:** Adds a text field to an alert.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uialertcontroller/1620093-addtextfield) for more info.
  @discardableResult
  func addTextField() -> Self {
    base.addTextField()
    return self
  }
  
  /// PropertySetter wrapper for `.addTextField(configurationHandler:)`
  ///  - **Summary:**  Adds a text field to an alert.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uialertcontroller/1620093-addtextfield) for more info.
  @discardableResult
  func addTextField(configurationHandler: ((UITextField) -> Void)?) -> Self {
    base.addTextField(configurationHandler: configurationHandler)
    return self
  }
  
}

// MARK: - iOS16 properties
@available(iOS 16.0, *)
public extension PropertySetter where Base: UIAlertController {

  /// PropertySetter wrapper for `.addTextField()`
  ///  - **Summary:**  Indicates the severity of the alert.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uialertcontroller/3930353-severity) for more info.
  @discardableResult
  func severity(_ severity: UIAlertControllerSeverity) -> Self {
    base.severity = severity
    return self
  }
}
