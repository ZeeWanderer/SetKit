//
//  UIStackView+PropertySetter.swift
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

// MARK: - UIStackView
public extension PropertySetter where Base: UIStackView {
  
  /// PropertySetter wrapper for `.axis`
  /// - **Summary:**  The axis along which the arranged views lay out.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uistackview/1616223-axis) for more info.
  @discardableResult
  func axis(_ axis: NSLayoutConstraint.Axis) -> Self {
    base.axis = axis
    return self
  }
  
  /// PropertySetter wrapper for `.alignment`
  /// - **Summary:**  The alignment of the arranged subviews perpendicular to the stack view’s axis.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uistackview/1616243-alignment) for more info.
  @discardableResult
  func alignment(_ alignment: UIStackView.Alignment) -> Self {
    base.alignment = alignment
    return self
  }
  
  /// PropertySetter wrapper for `.spacing`
  /// - **Summary:**  The distance in points between the adjacent edges of the stack view’s arranged views.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uistackview/1616225-spacing) for more info.
  @discardableResult
  func spacing(_ spacing: CGFloat) -> Self {
    base.spacing = spacing
    return self
  }
  
  /// PropertySetter wrapper for `.distribution`
  /// - **Summary:**  The distribution of the arranged views along the stack view’s axis.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uistackview/1616233-distribution) for more info.
  @discardableResult
  func distribution(_ distribution: UIStackView.Distribution) -> Self {
    base.distribution = distribution
    return self
  }
  
  /// PropertySetter wrapper for `.addArrangedSubview(_:)`
  /// - **Summary:**  Adds a view to the end of the arranged subviews array.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uistackview/1616227-addarrangedsubview) for more info.
  @discardableResult
  func arrangedSubview(_ view: UIView) -> Self {
    base.addArrangedSubview(view)
    return self
  }
  
  /// Variadic-based PropertySetter wrapper for `.addArrangedSubview(_:)`
  /// - Note: This method sets `.translatesAutoresizingMaskIntoConstraints = false` for all subviews
  @discardableResult
  func arrangedSubviews(_ subviews: UIView...) -> Self {
    for view in subviews {
      view.translatesAutoresizingMaskIntoConstraints = false
      base.addArrangedSubview(view)
    }
    return self
  }
  
  /// PropertySetter wrapper for `.isLayoutMarginsRelativeArrangement`
  /// - **Summary:**  A Boolean value that determines whether the stack view lays out its arranged views relative to its layout margins.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uistackview/1616220-islayoutmarginsrelativearrangeme) for more info.
  @discardableResult
  func isLayoutMarginsRelativeArrangement(_ bool: Bool) -> Self {
    base.isLayoutMarginsRelativeArrangement = bool
    return self
  }
  
  /// PropertySetter wrapper for `.isBaselineRelativeArrangement`
  /// - **Summary:**  A Boolean value that determines whether the vertical spacing between views is measured from their baselines.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uistackview/1616224-isbaselinerelativearrangement) for more info.
  @discardableResult
  func isBaselineRelativeArrangement(_ bool: Bool) -> Self {
    base.isBaselineRelativeArrangement = bool
    return self
  }
  
  /// PropertySetter wrapper for `.setCustomSpacing(_:, after:)`
  /// - **Summary:**  Applies custom spacing after the specified view.
  @discardableResult
  func customSpacing(_ spacing: CGFloat, after: UIView) -> Self {
    base.setCustomSpacing(spacing, after: after)
    return self
  }
}
