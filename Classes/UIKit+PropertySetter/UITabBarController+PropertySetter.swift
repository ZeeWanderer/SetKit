//
//  UITabBarController+PropertySetter.swift
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

// MARK: - UITabBarController
public extension PropertySetter where Base: UITabBarController {
  
  /// PropertySetter wrapper for `.selectedViewController`
  /// - **Summary:** The view controller associated with the currently selected tab item.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitabbarcontroller/1621172-selectedviewcontroller) for more info.
  @discardableResult
  func selectedViewController(_ controller: UIViewController?) -> Self {
    base.selectedViewController = controller
    return self
  }
  
  /// PropertySetter wrapper for `.selectedIndex`
  /// - **Summary:** The index of the view controller associated with the currently selected tab item.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitabbarcontroller/1621171-selectedindex) for more info.
  @discardableResult
  func selectedIndex(_ index: Int) -> Self {
    base.selectedIndex = index
    return self
  }
  
  /// PropertySetter wrapper for `.delegate`
  /// - **Summary:** The tab bar controller’s delegate object.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitabbarcontroller/1621164-delegate) for more info.
  @discardableResult
  func delegate(_ delegate: UITabBarControllerDelegate?) -> Self {
    base.delegate = delegate
    return self
  }
  
  /// PropertySetter wrapper for `.customizableViewControllers`
  /// - **Summary:** The subset of view controllers managed by this tab bar controller that can be customized.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitabbarcontroller/1621184-customizableviewcontrollers) for more info.
  @discardableResult
  func customizableViewControllers(_ controllers: [UIViewController]) -> Self {
    base.customizableViewControllers = controllers
    return self
  }
  
  /// PropertySetter wrapper for `.viewControllers`
  /// - **Summary:** An array of the root view controllers displayed by the tab bar interface.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitabbarcontroller/1621185-viewcontrollers) for more info.
  ///
  /// **PropertySetter description**
  ///
  /// If you want to animate the change use ``SetKit/PropertySetter/viewControllers(_:animated:)-2zgx8``
  @discardableResult
  func viewControllers(_ controllers: [UIViewController]) -> Self {
    base.viewControllers = controllers
    return self
  }
  
  /// PropertySetter wrapper for `.setViewControllers(_ controllers: [UIViewController], animated: Bool)`
  /// - **Summary:** Sets the root view controllers of the tab bar controller.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitabbarcontroller/1621177-setviewcontrollers) for more info.
  @discardableResult
  func viewControllers(_ controllers: [UIViewController], animated: Bool) -> Self {
    base.setViewControllers(controllers, animated: animated)
    return self
  }
  
}
