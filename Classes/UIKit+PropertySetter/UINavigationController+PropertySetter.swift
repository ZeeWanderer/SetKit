//
//  UINavigationController+PropertySetter.swift
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

// MARK: - UINavigationController
public extension PropertySetter where Base: UINavigationController {
  
  /// PropertySetter wrapper to access navigationBar propertySetter directly
  /// - **Example:**
  /// ```swift
  ///     navigationController.set
  ///       .hidesBarsOnSwipe(true)
  ///       // Edit navigationBar properties
  ///       .navigationBarProperties { set in
  ///          set
  ///            .backgroundColor(.red)
  ///            .items([UINavigationItem(title: "Settings")], animated: true)
  ///       }
  ///       // Fall back to the navigationController properties
  ///       .navigationBarHidden(true)
  ///       .delegate(self)
  /// ```
  ///
  @discardableResult
  func navigationBarProperties(_ block: @escaping (PropertySetter<UINavigationBar>) -> Void) -> Self {
    block(base.navigationBar.set)
    return self
  }
  
  /// PropertySetter wrapper to access navigationBar propertySetter directly
  /// - **Example:**
  /// ```swift
  /// navigationController?.set
  ///   .hidesBarsOnSwipe(true)
  ///       // Edit navigationItem properties
  ///   .navigationItemProperties { set in
  ///      set
  ///        .backBarButtonItem(UIBarButtonItem(title: "Settings"))
  ///        .hidesBackButton(true)
  ///   }
  ///       // Fall back to the navigationController properties
  ///   .delegate(self)
  /// ```
  @discardableResult
  func navigationItemProperties(_ block: @escaping (PropertySetter<UINavigationItem>) -> Void) -> Self {
    block(base.navigationItem.set)
    return self
  }
  
  /// PropertySetter wrapper for `.delegate`
  /// - **Summary:** The delegate of the navigation controller object.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationcontroller/1621876-delegate) for more info.
  @discardableResult
  func delegate(_ delegate: UINavigationControllerDelegate?) -> Self {
    base.delegate = delegate
    return self
  }
  
  /// PropertySetter wrapper for `.isNavigationBarHidden`
  /// - **Summary:** A Boolean value that indicates whether the navigation bar is hidden.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationcontroller/1621850-isnavigationbarhidden) for more info.
  ///
  /// **PropertyWrapper description:**
  ///
  /// - If you want to animate the change use ``SetKit/PropertySetter/navigationBarHidden(_:animated:)`` wrapper
  @discardableResult
  func navigationBarHidden(_ bool: Bool) -> Self {
    base.isNavigationBarHidden = bool
    return self
  }
  
  /// PropertySetter wrapper for `.setNavigationBarHidden(_ hidden: Bool, animated: Bool)`
  /// - **Summary:** A Boolean value that indicates whether the navigation bar is hidden.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationcontroller/1621885-setnavigationbarhidden) for more info.
  ///
  /// **PropertyWrapper description:**
  ///
  /// - If you want to make the change  without animation set `animated` parameter to `false` or use ``SetKit/PropertySetter/navigationBarHidden(_:)`` wrapper
  @discardableResult
  func navigationBarHidden(_ hidden: Bool, animated: Bool) -> Self {
    base.setNavigationBarHidden(hidden, animated: animated)
    return self
  }
  
  /// PropertySetter wrapper for `.viewControllers`
  /// - **Summary:** The view controllers currently on the navigation stack.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationcontroller/1621873-viewcontrollers) for more info.
  ///
  /// **PropertyWrapper description:**
  ///
  /// - If you want to animate the change use ``SetKit/PropertySetter/viewControllers(_:animated:)-69lw5`` wrapper
  @discardableResult
  func viewControllers(_ controllers: [UIViewController]) -> Self {
    base.viewControllers = controllers
    return self
  }
  
  /// PropertySetter wrapper for `.setViewControllers(_ controllers: [UIViewController], animated: Bool)`
  /// - **Summary:** Replaces the view controllers currently managed by the navigation controller with the specified items.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationcontroller/1621861-setviewcontrollers) for more info.
  ///
  /// **PropertyWrapper description:**
  ///
  /// - If you want to make the change  without animation set `animated` parameter to `false` or use ``SetKit/PropertySetter/viewControllers(_:)-8zuzl`` wrapper
  @discardableResult
  func viewControllers(_ controllers: [UIViewController], animated: Bool) -> Self {
    base.setViewControllers(controllers, animated: animated)
    return self
  }
  
  /// PropertySetter wrapper for `.hidesBarsOnSwipe`
  /// - **Summary:** A Boolean value indicating whether the navigation bar hides its bars in response to a swipe gesture.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationcontroller/1621883-hidesbarsonswipe) for more info.
  @discardableResult
  func hidesBarsOnSwipe(_ bool: Bool) -> Self {
    base.hidesBarsOnSwipe = bool
    return self
  }
  
  /// PropertySetter wrapper for `.hidesBarsOnTap`
  /// - **Summary:** A Boolean value indicating whether the navigation controller allows hiding of its bars using a tap gesture.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationcontroller/1621879-hidesbarsontap) for more info.
  @discardableResult
  func hidesBarsOnTap(_ bool: Bool) -> Self {
    base.hidesBarsOnTap = bool
    return self
  }
  
  /// PropertySetter wrapper for `.hidesBarsWhenKeyboardAppears`
  /// - **Summary:**  A Boolean value indicating whether the navigation controller hides its bars when the keyboard appears.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationcontroller/1621881-hidesbarswhenkeyboardappears) for more info.
  @discardableResult
  func hidesBarsWhenKeyboardAppears(_ bool: Bool) -> Self {
    base.hidesBarsWhenKeyboardAppears = bool
    return self
  }
  
  /// PropertySetter wrapper for `.hidesBottomBarWhenPushed`
  /// - **Summary:** A Boolean value indicating whether the toolbar at the bottom of the screen is hidden when the view controller is pushed on to a navigation controller.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiviewcontroller/1621863-hidesbottombarwhenpushed) for more info.
  @discardableResult
  func hidesBottomBarWhenPushed(_ bool: Bool) -> Self {
    base.hidesBottomBarWhenPushed = bool
    return self
  }
  
  /// PropertySetter wrapper for `.hidesBarsWhenVerticallyCompact`
  /// - **Summary:**  A Boolean value indicating whether the navigation controller hides its bars in a vertically compact environment.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationcontroller/1621869-hidesbarswhenverticallycompact) for more info.
  @discardableResult
  func hidesBarsWhenVerticallyCompact(_ bool: Bool) -> Self {
    base.hidesBarsWhenVerticallyCompact = bool
    return self
  }
  
  /// PropertySetter wrapper for `.isToolbarHidden`
  /// - **Summary:**  A Boolean indicating whether the navigation controller’s built-in toolbar is visible.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationcontroller/1621875-istoolbarhidden) for more info.
  ///
  /// **PropertyWrapper description:**
  ///
  /// - If you want to animate the change use ``SetKit/PropertySetter/toolbarHidden(_:animated:)``  wrapper
  @discardableResult
  func toolbarHidden(_ bool: Bool) -> Self {
    base.isToolbarHidden = bool
    return self
  }
  
  /// PropertySetter wrapper for `.setToolbarHidden(_ hidden: Bool, animated: Bool)`
  /// - **Summary:**  Changes the visibility of the navigation controller’s built-in toolbar.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationcontroller/1621888-settoolbarhidden) for more info.
  ///
  /// **PropertyWrapper description:**
  ///
  /// - If you want to make the change  without animation set `animated` parameter to `false` or use ``SetKit/PropertySetter/toolbarHidden(_:)`` wrapper
  @discardableResult
  func toolbarHidden(_ hidden: Bool, animated: Bool) -> Self {
    base.setToolbarHidden(hidden, animated: animated)
    return self
  }
}
