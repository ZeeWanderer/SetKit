//
//  UIActivityIndicatorView+PropertySetter.swift
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
#if canImport(SetKitBase)
import SetKitBase
#endif

// MARK: - UIActivityIndicatorView
public extension PropertySetter where Base: UIActivityIndicatorView {
  
  /// PropertySetter wrapper for `.hidesWhenStopped`
  /// - **Summary:**  A Boolean value that controls whether the activity indicator is hidden when the animation is stopped.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiactivityindicatorview/1622837-hideswhenstopped) for more info.
  @inlinable
  @discardableResult
  func hidesWhenStopped(_ bool: Bool) -> Self {
    base.hidesWhenStopped = bool
    return self
  }
  
  /// PropertySetter wrapper for `.color`
  /// - **Summary:**  The color of the activity indicator.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiactivityindicatorview/1622836-color) for more info.
  @inlinable
  @discardableResult
  func color(_ color: UIColor) -> Self {
    base.color = color
    return self
  }
  
  /// PropertySetter wrapper for `.startAnimating()` or `.stopAnimating()` based on parameter value
  @inlinable
  @discardableResult
  func animating(_ bool: Bool) -> Self {
    if bool {
      base.startAnimating()
    } else {
      base.stopAnimating()
    }
    return self
  }
  
  /// PropertySetter wrapper for `.activityIndicatorViewStyle`
  /// - **Summary:**  The basic appearance of the activity indicator.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiactivityindicatorview/1622847-style) for more info.
  @inlinable
  @discardableResult
  func activityIndicatorViewStyle(_ style: UIActivityIndicatorView.Style) -> Self {
    base.style = style
    return self
  }
}
