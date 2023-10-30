//
//  UINavigationBar+PropertySetter.swift
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

// MARK: - UINavigationBar
public extension PropertySetter where Base: UINavigationBar {
  
  /// PropertySetter wrapper for `.delegate`
  /// - **Summary:**  The navigation bar’s delegate object.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationbar/1624951-delegate) for more info.
  @discardableResult
  func delegate(_ delegate: UINavigationBarDelegate?) -> Self {
    base.delegate = delegate
    return self
  }
  
  /// PropertySetter wrapper for `.isTranslucent`
  /// - **Summary:**  A Boolean value that indicates whether the navigation bar is translucent.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationbar/1624928-istranslucent) for more info.
  @discardableResult
  func translucent(_ bool: Bool) -> Self {
    base.isTranslucent = bool
    return self
  }
  
  /// PropertySetter wrapper for `.tintColor`
  /// - **Summary:**  The tint color to apply to the navigation items and bar button items.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationbar/1624937-tintcolor) for more info.
  @discardableResult
  func tintColor(_ color: UIColor) -> Self {
    base.tintColor = color
    return self
  }
  
  /// PropertySetter wrapper for `.barTintColor`
  /// - **Summary:**  The tint color to apply to the navigation bar background.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationbar/1624931-bartintcolor) for more info.
  @discardableResult
  func barTintColor(_ color: UIColor) -> Self {
    base.barTintColor = color
    return self
  }
  
  /// PropertySetter wrapper for `.titleTextAttributes`
  /// - **Summary:**  Display attributes for the bar’s title text.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationbar/1624953-titletextattributes) for more info.
  @discardableResult
  func titleTextAttributes(_ attributes: [NSAttributedString.Key : Any]? ) -> Self {
    base.titleTextAttributes = attributes
    return self
  }
  
  /// PropertySetter wrapper for `.largeTitleTextAttributes`
  /// - **Summary:**  Display attributes for the bar's large title text.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationbar/2919946-largetitletextattributes) for more info.
  @discardableResult
  func largeTitleTextAttributes(_ attributes: [NSAttributedString.Key : Any]? ) -> Self {
    base.largeTitleTextAttributes = attributes
    return self
  }
  
  /// PropertySetter wrapper for `.prefersLargeTitles`
  /// - **Summary:**  A Boolean value that indicates whether the title displays in a large format.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationbar/2919946-largetitletextattributes) for more info.
  @discardableResult
  func prefersLargeTitles(_ bool: Bool) -> Self {
    base.prefersLargeTitles = bool
    return self
  }
    
  /// PropertySetter wrapper for `.items`
  /// - **Summary:**  An array of navigation items managed by the navigation bar.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationbar/1624961-items) for more info.
  @discardableResult
  func items(_ items: [UINavigationItem]?) -> Self {
    base.items = items
    return self
  }
  
  /// PropertySetter wrapper for `.setItems_ items: [UITabBarItem]?, animated: Bool)`
  /// - **Summary:**  Replaces the navigation items currently managed by the navigation bar with the specified items.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationbar/1624945-setitems) for more info.
  @discardableResult
  func items(_ items: [UINavigationItem]?, animated: Bool = true) -> Self {
    base.setItems(items, animated: animated)
    return self
  }
  
  /// PropertySetter wrapper for `.shadowImage`
  /// - **Summary:**  The shadow image to be used for the navigation bar.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationbar/1624963-shadowimage) for more info.
  @discardableResult
  func shadowImage(_ image: UIImage?) -> Self {
    base.shadowImage = image
    return self
  }
  
  /// PropertySetter wrapper for `.setBackgroundImage(_ image: UIImage?, barMetrics: UIBarMetrics)`
  /// - **Summary:**  Sets the background image for given bar metrics.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationbar/1624926-setbackgroundimage) for more info.
  @discardableResult
  func backgroundImage(_ image: UIImage?, barMetrics: UIBarMetrics) -> Self {
    base.setBackgroundImage(image, for: barMetrics)
    return self
  }
  
  /// PropertySetter wrapper for `.setBackgroundImage(_ image: UIImage?, forToolbarPosition: UIBarPosition, barMetrics: UIBarMetrics)`
  /// - **Summary:**  Sets the background image to use for a given bar position and set of metrics.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationbar/1624968-setbackgroundimage) for more info.
  @discardableResult
  func backgroundImage(_ image: UIImage?, for position: UIBarPosition, barMetrics: UIBarMetrics) -> Self {
    base.setBackgroundImage(image, for: position, barMetrics: barMetrics)
    return self
  }
  
  /// PropertySetter wrapper for `.standardAppearance`
  /// - **Summary:**  The appearance settings for a standard-height navigation bar.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationbar/3198028-standardappearance) for more info.
  @discardableResult
  func standardAppearance(_ appearance: UINavigationBarAppearance) -> Self {
    base.standardAppearance = appearance
    return self
  }
  
  /// PropertySetter wrapper for `.scrollEdgeAppearance`
  /// - **Summary:**  The appearance settings for the navigation bar when the edge of scrollable content aligns with the edge of the navigation bar.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationbar/3198027-scrolledgeappearance) for more info.
  @discardableResult
  func scrollEdgeAppearance(_ appearance: UINavigationBarAppearance?) -> Self {
    base.scrollEdgeAppearance = appearance
    return self
  }
  
  /// PropertySetter wrapper for `.compactAppearance`
  /// - **Summary:**  The appearance settings for a compact-height navigation bar.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationbar/3198026-compactappearance) for more info.
  @discardableResult
  func compactAppearance(_ appearance: UINavigationBarAppearance?) -> Self {
    base.compactAppearance = appearance
    return self
  }
  
  /// PropertySetter wrapper for `.barStyle`
  /// - **Summary:**  The navigation bar style that specifies its appearance.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationbar/1624955-barstyle) for more info.
  @discardableResult
  func barStyle(_ style: UIBarStyle) -> Self {
    base.barStyle = style
    return self
  }
  
  /// PropertySetter wrapper for `.backIndicatorImage`
  /// - **Summary:**  The image shown beside the Back button.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationbar/1624942-backindicatorimage) for more info.
  @discardableResult
  func backIndicatorImage(_ image: UIImage?) -> Self {
    base.backIndicatorImage = image
    return self
  }
  
  /// PropertySetter wrapper for `.backIndicatorTransitionMaskImage`
  /// - **Summary:**  The image used as a mask for content during push and pop transitions.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationbar/1624938-backindicatortransitionmaskimage) for more info.
  @discardableResult
  func backIndicatorTransitionMaskImage(_ image: UIImage?) -> Self {
    base.backIndicatorTransitionMaskImage = image
    return self
  }
  
}

// MARK: - iOS15 properties
@available(iOS 15.0, *)
public extension PropertySetter where Base: UINavigationBar {
  
  /// PropertySetter wrapper for `.compactScrollEdgeAppearance`
  /// - **Summary:**  The appearance settings for a compact-height navigation bar when the edge of scrollable content aligns with the edge of the navigation bar.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationbar/3750865-compactscrolledgeappearance) for more info.
  @discardableResult
  func compactScrollEdgeAppearance(_ appearance: UINavigationBarAppearance?) -> Self {
    base.compactScrollEdgeAppearance = appearance
    return self
  }
  
}

// MARK: - iOS16 properties
@available(iOS 16.0, *)
public extension PropertySetter where Base: UINavigationBar {
  
  /// PropertySetter wrapper for `.preferredBehavioralStyle`
  /// - **Summary:**  The preferred behavioral style of the navigation bar.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationbar/3987958-preferredbehavioralstyle) for more info.
  @discardableResult
  func preferredBehavioralStyle(_ style: UIBehavioralStyle) -> Self {
    base.preferredBehavioralStyle = style
    return self
  }
  
}
