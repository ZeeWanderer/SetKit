//
//  UITabBar+PropertySetter.swift
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

// MARK: - UITabBar
public extension PropertySetter where Base: UITabBar {
  
  /// PropertySetter wrapper for `.delegate`
  /// - **Summary:**  The tab bar’s delegate object.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitabbar/1623444-delegate) for more info.
  @inlinable
  @discardableResult
  func delegate(_ delegate: UITabBarDelegate?) -> Self {
    base.delegate = delegate
    return self
  }
  
  /// PropertySetter wrapper for `.items`
  /// - **Summary:**  The items displayed by the tab bar.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitabbar/1623466-items) for more info.
  @inlinable
  @discardableResult
  func items(_ items: [UITabBarItem]?) -> Self {
    base.items = items
    return self
  }
  
  /// PropertySetter wrapper for `.setItems_ items: [UITabBarItem]?, animated: Bool)`
  /// - **Summary:**  Sets the items on the tab bar, optionally animating any changes into position.
  /// See [**documentation**]() for more info.
  @inlinable
  @discardableResult
  func items(_ items: [UITabBarItem]?, animated: Bool = true) -> Self {
    base.setItems(items, animated: animated)
    return self
  }
  
  /// PropertySetter wrapper for `.isTranslucent`
  /// - **Summary:**
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitabbar/1623455-setitems) for more info.
  @inlinable
  @discardableResult
  func translucent(_ bool: Bool) -> Self {
    base.isTranslucent = bool
    return self
  }
  
  /// PropertySetter wrapper for `.backgroundImage`
  /// - **Summary:**  The custom background image for the tab bar.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitabbar/1623469-backgroundimage) for more info.
  @inlinable
  @discardableResult
  func backgroundImage(_ image: UIImage?) -> Self {
    base.backgroundImage = image
    return self
  }
  
  /// PropertySetter wrapper for `.barStyle`
  /// - **Summary:**  The tab bar style that specifies its appearance.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitabbar/1623454-barstyle) for more info.
  @inlinable
  @discardableResult
  func barStyle(_ style: UIBarStyle) -> Self {
    base.barStyle = style
    return self
  }
  
  /// PropertySetter wrapper for `.tintColor`
  /// - **Summary:**  The tint color to apply to the tab bar items.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitabbar/1623460-tintcolor) for more info.
  @inlinable
  @discardableResult
  func tintColor(_ color: UIColor) -> Self {
    base.tintColor = color
    return self
  }
  
  /// PropertySetter wrapper for `.barTintColor`
  /// - **Summary:**  The tint color to apply to the tab bar background.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitabbar/1623445-bartintcolor) for more info.
  @inlinable
  @discardableResult
  func barTintColor(_ color: UIColor?) -> Self {
    base.barTintColor = color
    return self
  }
  
  /// PropertySetter wrapper for `.isSpringLoaded`
  /// - **Summary:**  A Boolean value that specifies whether the object is participating in spring-loaded interaction for a drag and drop activity.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uispringloadedinteractionsupporting/2897189-isspringloaded) for more info.
  @inlinable
  @discardableResult
  func springLoaded(_ bool: Bool) -> Self {
    base.isSpringLoaded = bool
    return self
  }
  
  /// PropertySetter wrapper for `.itemPositioning`
  /// - **Summary:**  The positioning scheme for the tab bar items in the tab bar.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitabbar/1623468-itempositioning) for more info.
  @inlinable
  @discardableResult
  func itemPositioning(_ positioning: UITabBar.ItemPositioning) -> Self {
    base.itemPositioning = positioning
    return self
  }
  
  /// PropertySetter wrapper for `.itemSpacing`
  /// - **Summary:**  The amount of space (in points) to use between tab bar items.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitabbar/1623446-itemspacing) for more info.
  @inlinable
  @discardableResult
  func itemSpacing(_ spacing: CGFloat) -> Self {
    base.itemSpacing = spacing
    return self
  }
  
  /// PropertySetter wrapper for `.itemWidth`
  /// - **Summary:**  The width (in points) of tab bar items.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitabbar/1623465-itemwidth) for more info.
  @inlinable
  @discardableResult
  func itemWidth(_ width: CGFloat) -> Self {
    base.itemWidth = width
    return self
  }
  
  /// PropertySetter wrapper for `.selectedItem`
  /// - **Summary:**  The currently selected item on the tab bar.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitabbar/1623453-selecteditem) for more info.
  @inlinable
  @discardableResult
  func selectedItem(_ item: UITabBarItem?) -> Self {
    base.selectedItem = item
    return self
  }
  
  /// PropertySetter wrapper for `.selectionIndicatorImage`
  /// - **Summary:**  The image to use for the selection indicator.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitabbar/1623456-selectionindicatorimage) for more info.
  @inlinable
  @discardableResult
  func selectionIndicatorImage(_ image: UIImage) -> Self {
    base.selectionIndicatorImage = image
    return self
  }
  
  /// PropertySetter wrapper for `.shadowImage`
  /// - **Summary:**  The shadow image to use for the tab bar.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitabbar/1623452-shadowimage) for more info.
  @inlinable
  @discardableResult
  func shadowImage(_ image: UIImage) -> Self {
    base.shadowImage = image
    return self
  }
  
  /// PropertySetter wrapper for `.unselectedItemTintColor`
  /// - **Summary:**  The tint color to apply to unselected tabs.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitabbar/1648949-unselecteditemtintcolor) for more info.
  @inlinable
  @discardableResult
  func unselectedItemTintColor(_ color: UIColor) -> Self {
    base.unselectedItemTintColor = color
    return self
  }
  
  /// PropertySetter wrapper for `.standardAppearance`
  /// - **Summary:**  The appearance settings for a standard-height tab bar.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitabbar/3198046-standardappearance) for more info.
  @inlinable
  @discardableResult
  func standardAppearance(_ appearance: UITabBarAppearance) -> Self {
    base.standardAppearance = appearance
    return self
  }
  
}

// MARK: - iOS15 properties
@available(iOS 15.0, *)
public extension PropertySetter where Base: UITabBar {
  
  /// PropertySetter wrapper for `.scrollEdgeAppearance`
  /// - **Summary:**  The appearance settings for the tab bar when the edge of scrollable content aligns with the edge of the tab bar.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitabbar/3750912-scrolledgeappearance) for more info.
  @inlinable
  @discardableResult
  func scrollEdgeAppearance(_ appearance: UITabBarAppearance?) -> Self {
    base.scrollEdgeAppearance = appearance
    return self
  }
  
}
