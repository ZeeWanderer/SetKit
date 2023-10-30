//
//  UIViewController+PropertySetter.swift
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

// MARK: - UIViewController
public extension PropertySetter where Base: UIViewController {
  
  /// PropertySetter wrapper for `.view`
  /// - **Summary:** The view that the controller manages.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiviewcontroller/1621460-view) for more info.
  @inlinable
  @discardableResult
  func view(_ view: UIView) -> Self {
    base.view = view
    return self
  }
  
  /// PropertySetter wrapper for `.title`
  /// - **Summary:** A localized string that represents the view this controller manages.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiviewcontroller/1621364-title) for more info.
  @inlinable
  @discardableResult
  func title(_ text: String?) -> Self {
    base.title = text
    return self
  }
  
  /// PropertySetter wrapper for `.modalPresentationStyle`
  /// - **Summary:** The presentation style for modal view controllers.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiviewcontroller/1621355-modalpresentationstyle) for more info.
  @inlinable
  @discardableResult
  func modalPresentationStyle(_ style: UIModalPresentationStyle) -> Self {
    base.modalPresentationStyle = style
    return self
  }
  
  /// PropertySetter wrapper for `.modalTransitionStyle`
  /// - **Summary:** The transition style to use when presenting the view controller.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiviewcontroller/1621388-modaltransitionstyle) for more info.
  @inlinable
  @discardableResult
  func modalTransitionStyle(_ style: UIModalTransitionStyle) -> Self {
    base.modalTransitionStyle = style
    return self
  }
  
  /// PropertySetter wrapper for `.additionalSafeAreaInsets`
  /// - **Summary:** Custom insets that you specify to modify the view controller's safe area.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiviewcontroller/2902284-additionalsafeareainsets) for more info.
  @inlinable
  @discardableResult
  func additionalSafeAreaInsets(_ insets: UIEdgeInsets) -> Self {
    base.additionalSafeAreaInsets = insets
    return self
  }
  
  /// PropertySetter wrapper for `.setNeedsStatusBarAppearanceUpdate`
  /// - **Summary:** Indicates to the system that the view controller status bar attributes have changed.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiviewcontroller/1621354-setneedsstatusbarappearanceupdat) for more info.
  @inlinable
  @discardableResult
  func needsStatusBarAppearanceUpdate() -> Self {
    base.setNeedsStatusBarAppearanceUpdate()
    return self
  }
  
  /// PropertySetter wrapper for `.setNeedsUpdateOfHomeIndicatorAutoHidden`
  /// - **Summary:** Notifies UIKit that your view controller updated its preference regarding the visual indicator for returning to the Home screen.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiviewcontroller/2887509-setneedsupdateofhomeindicatoraut) for more info.
  @inlinable
  @discardableResult
  func needsUpdateOfHomeIndicatorAutoHidden() -> Self {
    base.setNeedsUpdateOfHomeIndicatorAutoHidden()
    return self
  }
  
  /// PropertySetter wrapper for `.setNeedsUpdateOfScreenEdgesDeferringSystemGestures`
  /// - **Summary:** Notifies the system of changes to the screen edges that defer system gestures.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiviewcontroller/2887507-setneedsupdateofscreenedgesdefer) for more info.
  @inlinable
  @discardableResult
  func needsUpdateOfScreenEdgesDeferringSystemGestures() -> Self {
    base.setNeedsUpdateOfScreenEdgesDeferringSystemGestures()
    return self
  }
  
  /// PropertySetter wrapper for `.setEditing(_ editing: Bool, animated: Bool)`
  /// - **Summary:** Sets whether the view controller shows an editable view.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiviewcontroller/1621378-setediting) for more info.
  @inlinable
  @discardableResult
  func editing(_ editing: Bool, animated: Bool = true) -> Self {
    base.setEditing(editing, animated: animated)
    return self
  }
  
  /// PropertySetter wrapper for `.setToolbarItems(_ items: [UIBarButtonItem]?, animated: Bool)`
  /// - **Summary:** Sets the toolbar items to be displayed along with the view controller.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiviewcontroller/1621874-settoolbaritems) for more info.
  @inlinable
  @discardableResult
  func toolbarItems(_ items: [UIBarButtonItem]?, animated: Bool = true) -> Self {
    base.setToolbarItems(items, animated: animated)
    return self
  }
  
}

// MARK: - iOS14 properties
@available(iOS 14.0, *)
public extension PropertySetter where Base: UIViewController {
  
  /// PropertySetter wrapper for `.setNeedsUpdateOfPrefersPointerLocked`
  /// - **Summary:** Indicates that the view controller changed the pointer lock preference.
  @inlinable
  @discardableResult
  func needsUpdateOfPrefersPointerLocked() -> Self {
    base.setNeedsUpdateOfPrefersPointerLocked()
    return self
  }
  
}

// MARK: - iOS15 properties
@available(iOS 15.0, *)
public extension PropertySetter where Base: UIViewController {
  
  /// PropertySetter wrapper for `.setContentScrollView(_ scrollView: UIScrollView?)`
  /// - **Summary:** Sets the scroll view that bars observe for all edges of the view.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiviewcontroller/3816781-setcontentscrollview) for more info.
  @inlinable
  @discardableResult
  func contentScrollView(_ scrollView: UIScrollView?) -> Self {
    base.setContentScrollView(scrollView)
    return self
  }
  
  /// PropertySetter wrapper for `.setContentScrollView(_ scrollView: UIScrollView?, for edge: NSDirectionalRectEdge)`
  /// - **Summary:** Sets the scroll view that bars observe for the specified edge.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiviewcontroller/3750930-setcontentscrollview) for more info.
  @inlinable
  @discardableResult
  func contentScrollView(_ scrollView: UIScrollView?, for edge: NSDirectionalRectEdge) -> Self {
    base.setContentScrollView(scrollView, for: edge)
    return self
  }
  
}

// MARK: - iOS16 properties
@available(iOS 16.0, *)
public extension PropertySetter where Base: UIViewController {
  
  /// PropertySetter wrapper for `.setNeedsUpdateOfSupportedInterfaceOrientations`
  /// - **Summary:** Notifies the view controller about a change in supported interface orientations or preferred interface orientation for presentation.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiviewcontroller/4047535-setneedsupdateofsupportedinterfa) for more info.
  @inlinable
  @discardableResult
  func needsUpdateOfSupportedInterfaceOrientations() -> Self {
    base.setNeedsUpdateOfSupportedInterfaceOrientations()
    return self
  }
  
}

// MARK: - iOS17 properties
@available(iOS 17.0, *)
public extension PropertySetter where Base: UIViewController {
  
  /// PropertySetter wrapper for `.setNeedsUpdateContentUnavailableConfiguration`
  /// - **Summary:** Requests that the system update the content-unavailable configuration for the latest state.
  @inlinable
  @discardableResult
  func needsUpdateContentUnavailableConfiguration() -> Self {
    base.setNeedsUpdateContentUnavailableConfiguration()
    return self
  }
  
}
