//
//  ViewShape.swift
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

import Foundation
import QuartzCore

// MARK: - ViewShape
/// An enum that represents possible shape types to round corners of the view
@frozen public enum ViewShape {
  
  /// This shape will make your view circle.
  /// - Will only be effective when `base.bounds.height == base.bounds.width`. Otherwise will clip a capsule shape
  /// - Attention: Use this case only in `viewDidLayoutSubviews()` method for `UIViewController` subclass or in `layoutSubviews()` method for `UIView` subclass.
  case circle
  
  /// This case will round corners of the view using `layer.cornerRadius` and the value passed into `maskedCorners` parameter.
  /// - **Example:**
  ///```swift
  /// view.set
  ///    .corners(.roundedRect(
  ///       10,
  ///       maskedCorners: [
  ///           CACornerMask.layerMaxXMaxYCorner,
  ///           CACornerMask.layerMaxXMinYCorner
  ///        ]
  ///    ))
  ///```
  case roundedRectWith(maskedCorners: CACornerMask, _ radius: CGFloat)
  
  /// This case will round corners of the view using `layer.cornerRadius`
  /// - **Example:**
  ///```swift
  /// view.set
  ///    .corners(.roundedRect(10)
  ///```
  ///
  /// - Note: This ViewShape case masks all corners
  case roundedRect(_ radius: CGFloat)
}
