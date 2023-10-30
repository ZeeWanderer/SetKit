//
//  UIToolBar+PropertySetter.swift
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

// MARK: - UIToolbar
public extension PropertySetter where Base: UIToolbar {
  
  /// PropertySetter wrapper for `.delegate`
  /// - **Summary:**  The toolbar’s delegate object.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitoolbar/1617992-delegate) for more info.
  @inlinable
  @discardableResult
  func delegate(_ delegate: UIToolbarDelegate?) -> Self {
    base.delegate = delegate
    return self
  }
  
  /// PropertySetter wrapper for `.items`
  /// - **Summary:**  The items displayed on the toolbar.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitoolbar/1617997-items) for more info.
  @inlinable
  @discardableResult
  func items(_ items: [UIBarButtonItem]?) -> Self {
    base.items = items
    return self
  }
  
  /// PropertySetter wrapper for `.setItems_ items: [UITabBarItem]?, animated: Bool)`
  /// - **Summary:**  Sets the items on the toolbar by animating the changes.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitoolbar/1617999-setitems) for more info.
  @inlinable
  @discardableResult
  func items(_ items: [UIBarButtonItem]?, animated: Bool = true) -> Self {
    base.setItems(items, animated: animated)
    return self
  }
  
  /// PropertySetter wrapper for `.isTranslucent`
  /// - **Summary:**  A Boolean value that indicates whether the toolbar is translucent.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitoolbar/1618001-istranslucent) for more info.
  @inlinable
  @discardableResult
  func translucent(_ bool: Bool) -> Self {
    base.isTranslucent = bool
    return self
  }
  
  /// PropertySetter wrapper for `.setBackgroundImage(_ image: UIImage?, forToolbarPosition: UIBarPosition, barMetrics: UIBarMetrics)`
  /// - **Summary:**  Sets the image to use for the background in a given position and with given metrics.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitoolbar/1618003-setbackgroundimage) for more info.
  @inlinable
  @discardableResult
  func backgroundImage(_ image: UIImage?, forToolbarPosition: UIBarPosition, barMetrics: UIBarMetrics) -> Self {
    base.setBackgroundImage(image, forToolbarPosition: forToolbarPosition, barMetrics: barMetrics)
    return self
  }
  
  /// PropertySetter wrapper for `.setShadowImage(_ image: UIImage?, forToolbarPosition: UIBarPosition)`
  /// - **Summary:**  Sets the image to use for the toolbar shadow in a given position.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitoolbar/1617991-setshadowimage) for more info.
  @inlinable
  @discardableResult
  func shadowImage(_ image: UIImage?, forToolbarPosition: UIBarPosition) -> Self {
    base.setShadowImage(image, forToolbarPosition: forToolbarPosition)
    return self
  }
  
  /// PropertySetter wrapper for `.barStyle`
  /// - **Summary:**  The toolbar style that specifies its appearance.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitoolbar/1617994-barstyle) for more info.
  @inlinable
  @discardableResult
  func barStyle(_ style: UIBarStyle) -> Self {
    base.barStyle = style
    return self
  }
  
  /// PropertySetter wrapper for `.tintColor`
  /// - **Summary:**  The tint color to apply to the bar button items.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitoolbar/1617995-tintcolor) for more info.
  @inlinable
  @discardableResult
  func tintColor(_ color: UIColor) -> Self {
    base.tintColor = color
    return self
  }
  
  /// PropertySetter wrapper for `.barTintColor`
  /// - **Summary:**  The tint color to apply to the toolbar background.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitoolbar/1618002-bartintcolor) for more info.
  @inlinable
  @discardableResult
  func barTintColor(_ color: UIColor) -> Self {
    base.barTintColor = color
    return self
  }
  
  /// PropertySetter wrapper for `.compactAppearance`
  /// - **Summary:**  The appearance settings to use for a compact-height toolbar.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitoolbar/3198080-compactappearance) for more info.
  @inlinable
  @discardableResult
  func compactAppearance(_ appearance: UIToolbarAppearance?) -> Self {
    base.compactAppearance = appearance
    return self
  }
  
  /// PropertySetter wrapper for `.standardAppearance`
  /// - **Summary:**  The appearance settings to use for a standard-height toolbar.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitoolbar/3198081-standardappearance) for more info.
  @inlinable
  @discardableResult
  func standardAppearance(_ appearance: UIToolbarAppearance) -> Self {
    base.standardAppearance = appearance
    return self
  }
  
}

// MARK: - iOS15 properties
@available(iOS 15.0, *)
public extension PropertySetter where Base: UIToolbar {
  
  /// PropertySetter wrapper for `.compactScrollEdgeAppearance`
  /// - **Summary:**  The appearance settings for a compact-height toolbar when the edge of any scrollable content aligns with the edge of a compact-height toolbar.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitoolbar/3752213-compactscrolledgeappearance) for more info.
  @inlinable
  @discardableResult
  func compactScrollEdgeAppearance(_ appearance: UIToolbarAppearance?) -> Self {
    base.compactScrollEdgeAppearance = appearance
    return self
  }
  
  /// PropertySetter wrapper for `.scrollEdgeAppearance`
  /// - **Summary:**  The appearance settings for a standard-height toolbar when the edge of scrollable content aligns with the edge of the toolbar.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitoolbar/3752214-scrolledgeappearance) for more info.
  @inlinable
  @discardableResult
  func scrollEdgeAppearance(_ appearance: UIToolbarAppearance?) -> Self {
    base.scrollEdgeAppearance = appearance
    return self
  }
  
}
