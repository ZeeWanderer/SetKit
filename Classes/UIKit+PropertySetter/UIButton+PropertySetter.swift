//
//  UIButton+PropertySetter.swift
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

// MARK: - UIButton
public extension PropertySetter where Base: UIButton {
  
  /// PropertySetter wrapper to access titleLabel propertySetter directly
  /// - **Example:**
  /// ```swift
  /// button.set
  ///   .alpha(0.5)
  ///   .tap(self, action: #selector(buttonTapped))
  ///     // Edit titleLabel properties
  ///   .titleLabelProperties { set in
  ///       set
  ///        .font(.systemFont(ofSize: 10))
  ///        .multiline()
  ///     }
  ///     // Fall back to the button properties
  ///    .enabled(false)
  /// ```
  ///
  /// - Attention: If the button does not have titleLabel this wrapper will call `.title("", for: .normal)` wrapper and force unwrap the optional
  @inlinable
  @discardableResult
  func titleLabelProperties(_ block: @escaping (PropertySetter<UILabel>) -> Void) -> Self {
    if let label = base.titleLabel {
      block(label.set)
    } else {
      base.set
        .title("")
      block(base.titleLabel!.set)
    }
    return self
  }
  
  /// PropertySetter wrapper to access imageView propertySetter directly
  /// - **Example:**
  /// ```swift
  /// button.set
  ///   .alpha(0.5)
  ///   .target(self, action: #selector(buttonTapped), for: .touchUpInside)
  ///     // Edit imageView properties
  ///   .imageViewProperties { set in
  ///       set?
  ///         .contentMode(.scaleAspectFill)
  ///         .clipsToBounds(true)
  ///    }
  ///     // Fall back to the button properties
  ///   .enabled(false)
  /// ```
  @inlinable
  @discardableResult
  func imageViewProperties(_ block: @escaping (PropertySetter<UIImageView>?) -> Void) -> Self {
    block(base.imageView?.set)
    return self
  }
  
  /// PropertySetter wrapper for `.tintColor`
  /// - **Summary**: The tint color to apply to the button title and image.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uibutton/1624025-tintcolor) for more info.
  @inlinable
  @discardableResult
  func tintColor(_ color: UIColor) -> Self {
    base.tintColor = color
    return self
  }
  
  /// PropertySetter wrapper for `.setTitle`
  /// - **Summary**:  Sets the title to use for the specified state.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uibutton/1624018-settitle) for more info.
  /// - Note: The default implementation of `event` is `UIControl.State = .normal`
  @inlinable
  @discardableResult
  func title(_ title: String?, for state: UIControl.State = .normal) -> Self {
    base.setTitle(title, for: state)
    return self
  }
  
  /// PropertySetter wrapper for `.setTitleColor`
  /// - **Summary:**  Sets the color of the title to use for the specified state.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uibutton/1623993-settitlecolor) for more info.
  /// - Note: The default implementation of `event` is `UIControl.State = .normal`
  @inlinable
  @discardableResult
  func titleColor(_ color: UIColor?, for state: UIControl.State = .normal) -> Self {
    base.setTitleColor(color, for: state)
    return self
  }
  
  /// PropertySetter wrapper for `.setImage`
  /// - **Summary:**  Sets the image to use for the specified state.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uibutton/1623997-setimage) for more info.
  /// - Note: The default implementation of `event` is `UIControl.State = .normal`
  @inlinable
  @discardableResult
  func image(_ image: UIImage?, for state: UIControl.State = .normal) -> Self {
    base.setImage(image, for: state)
    return self
  }
  
  /// PropertySetter wrapper for `.setBackgroundImage`
  /// - **Summary:**  Sets the background image to use for the specified button state.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uibutton/1624016-setbackgroundimage) for more info.
  /// - Note: The default implementation of `event` is `UIControl.State = .normal`
  @inlinable
  @discardableResult
  func backgroundImage(_ image: UIImage?, for state: UIControl.State = .normal) -> Self {
    base.setBackgroundImage(image, for: state)
    return self
  }
  
}

// MARK: - iOS14 properties
@available(iOS 14.0, *)
public extension PropertySetter where Base: UIButton {
  
  /// PropertySetter wrapper for `.menu`
  /// - **Summary:**  A menu that the button displays.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uibutton/3601189-menu) for more info.
  @available(iOS 14.0, *)
  @inlinable
  @discardableResult
  func menu(_ menu: UIMenu) -> Self {
    base.menu = menu
    return self
  }
  
  /// PropertySetter wrapper for `.role`
  /// - **Summary:**  The role of the button.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uibutton/3612050-role) for more info.
  @available(iOS 14.0, *)
  @inlinable
  @discardableResult
  func role(_ role: UIButton.Role) -> Self {
    base.role = role
    return self
  }
  
}

// MARK: - iOS15 properties
@available(iOS 15.0, *)
public extension PropertySetter where Base: UIButton {
  
  /// PropertySetter wrapper for `.configuration`
  /// - **Summary:**  The configuration for the button’s appearance.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uibutton/3784627-configuration) for more info.
  @available(iOS 15.0, *)
  @inlinable
  @discardableResult
  func configuration(_ configuration: UIButton.Configuration) -> Self {
    base.configuration = configuration
    return self
  }
  
  /// PropertySetter wrapper for `.configurationUpdateHandler`
  /// - **Summary:**  A closure that executes when the button state changes.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uibutton/3750769-configurationupdatehandler) for more info.
  @available(iOS 15.0, *)
  @inlinable
  @discardableResult
  func configurationUpdateHandler(_ handler: UIButton.ConfigurationUpdateHandler?) -> Self {
    base.configurationUpdateHandler = handler
    return self
  }
  
}
