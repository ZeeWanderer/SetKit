//
//  UISwitch+PropertySetter.swift
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

// MARK: - UISwitch
public extension PropertySetter where Base: UISwitch {
  
  /// PropertySetter wrapper for `.isOn`
  /// - **Summary:**  A Boolean value that determines whether the switch is in the on or off position.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiswitch/1623690-ison) for more info.
  @discardableResult
  func on(_ bool: Bool) -> Self {
    base.isOn = bool
    return self
  }
  
  /// PropertySetter wrapper for `.setOn(_:, animated:)`
  /// - **Summary:**  Sets the state of the switch to the on or off position, optionally animating the transition.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiswitch/1623686-seton) for more info.
  @discardableResult
  func on(_ bool: Bool, animated: Bool) -> Self {
    base.setOn(bool, animated: animated)
    return self
  }
  
  /// PropertySetter wrapper for `.onTintColor`
  /// - **Summary:**  The color used to tint the appearance of the switch when it’s in the on position.
  @discardableResult
  func onTintColor(_ color: UIColor) -> Self {
    base.onTintColor = color
    return self
  }
  
  /// PropertySetter wrapper for `.offImage`
  /// - **Summary:**  The image displayed when the switch is in the off position.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiswitch/1623683-offimage) for more info.
  @discardableResult
  func offImage(_ image: UIImage?) -> Self {
    base.offImage = image
    return self
  }
  
  /// PropertySetter wrapper for `.onImage`
  /// - **Summary:**  The image displayed when the switch is in the on position.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiswitch/1623689-onimage) for more info.
  @discardableResult
  func onImage(_ image: UIImage?) -> Self {
    base.onImage = image
    return self
  }
  
  /// PropertySetter wrapper for `.thumbTintColor`
  /// - **Summary:**  The color used to tint the appearance of the thumb.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiswitch/1623684-thumbtintcolor) for more info.
  @discardableResult
  func thumbTintColor(_ color: UIColor) -> Self {
    base.thumbTintColor = color
    return self
  }
  
}

// MARK: - iOS16 properties
@available(iOS 16, *)
public extension PropertySetter where Base: UISwitch {
  
  /// PropertySetter wrapper for `.preferredStyle`
  /// - **Summary:**  The preferred display style for the switch.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiswitch/3621874-preferredstyle) for more info.
  @discardableResult
  func preferredStyle(_ style: UISwitch.Style) -> Self {
    base.preferredStyle = style
    return self
  }
  
  /// PropertySetter wrapper for `.title`
  /// - **Summary:**  The title displayed next to a checkbox-style switch.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiswitch/3621876-title) for more info.
  @discardableResult
  func title(_ title: String?) -> Self {
    base.title = title
    return self
  }
  
}

