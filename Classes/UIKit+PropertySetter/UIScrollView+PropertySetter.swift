//
//  UIScrollView+PropertySetter.swift
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

// MARK: - UIScrollView
public extension PropertySetter where Base: UIScrollView {
  
  /// PropertySetter wrapper for `.delegate`
  /// - **Summary:**  The delegate of the scroll view.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiscrollview/1619430-delegate) for more info.
  @inlinable
  @discardableResult
  func delegate(_ delegate: UIScrollViewDelegate?) -> Self {
    base.delegate = delegate
    return self
  }
  
  /// PropertySetter wrapper for `.contentOffset`
  /// - **Summary:**  The point at which the origin of the content view is offset from the origin of the scroll view.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiscrollview/1619404-contentoffset) for more info.
  @inlinable
  @discardableResult
  func contentOffset(_ offset: CGPoint) -> Self {
    base.contentOffset = offset
    return self
  }
  
  /// PropertySetter wrapper for `.setContentOffset`
  /// - **Summary:**  Sets the offset from the content view’s origin that corresponds to the scroll view’s origin.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiscrollview/1619400-setcontentoffset) for more info.
  @inlinable
  @discardableResult
  func contentOffset(_ offset: CGPoint, animated: Bool = true) -> Self {
    base.setContentOffset(offset, animated: animated)
    return self
  }
  
  /// PropertySetter wrapper for `.contentInset`
  /// - **Summary:**  The custom distance that the content view is inset from the safe area or scroll view edges.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiscrollview/1619406-contentinset) for more info.
  @inlinable
  @discardableResult
  func contentInset(_ inset: UIEdgeInsets) -> Self {
    base.contentInset = inset
    return self
  }
  
  /// PropertySetter wrapper for `.contentSize`
  /// - **Summary:**  The size of the content view.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiscrollview/1619399-contentsize) for more info.
  @inlinable
  @discardableResult
  func contentSize(_ size: CGSize) -> Self {
    base.contentSize = size
    return self
  }
  
  /// PropertySetter wrapper for `.contentInsetAdjustmentBehavior`
  /// - **Summary:**  The behavior for determining the adjusted content offsets.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiscrollview/2902261-contentinsetadjustmentbehavior) for more info.
  @inlinable
  @discardableResult
  func contentInsetAdjustmentBehavior(_ behavior: UIScrollView.ContentInsetAdjustmentBehavior) -> Self {
    base.contentInsetAdjustmentBehavior = behavior
    return self
  }
  
  /// PropertySetter wrapper for `.isScrollEnabled = true`
  /// - **Summary:**  A Boolean value that determines whether scrolling is enabled.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiscrollview/1619395-isscrollenabled) for more info.
  @inlinable
  @discardableResult
  func scrollEnabled() -> Self {
    base.isScrollEnabled = true
    return self
  }
  
  /// PropertySetter wrapper for `.isScrollEnabled = false`
  /// - **Summary:**  A Boolean value that determines whether scrolling is enabled.
  @inlinable
  @discardableResult
  func scrollDisabled() -> Self {
    base.isScrollEnabled = false
    return self
  }
  
  /// PropertySetter wrapper for `.scrollsToTop`
  /// - **Summary:**  A Boolean value that controls whether the scroll-to-top gesture is enabled.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiscrollview/1619421-scrollstotop) for more info.
  @inlinable
  @discardableResult
  func scrollsToTop(_ bool: Bool) -> Self {
    base.scrollsToTop = bool
    return self
  }
  
  /// PropertySetter wrapper for `.refreshControl`
  /// - **Summary:**  The refresh control associated with the scroll view.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiscrollview/2127691-refreshcontrol) for more info.
  @inlinable
  @discardableResult
  func refreshControl(_ control: UIRefreshControl?) -> Self {
    base.refreshControl = control
    return self
  }
  
  /// PropertySetter wrapper for `.horizontalScrollIndicatorInsets`
  /// - **Summary:**  The horizontal distance the scroll indicators are inset from the edge of the scroll view.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiscrollview/3198044-horizontalscrollindicatorinsets) for more info.
  @inlinable
  @discardableResult
  func horizontalScrollIndicatorInsets(_ insets: UIEdgeInsets) -> Self {
    base.horizontalScrollIndicatorInsets = insets
    return self
  }
  
  /// PropertySetter wrapper for `.verticalScrollIndicatorInsets`
  /// - **Summary:**  The vertical distance the scroll indicators are inset from the edge of the scroll view.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiscrollview/3198045-verticalscrollindicatorinsets) for more info.
  @inlinable
  @discardableResult
  func verticalScrollIndicatorInsets(_ insets: UIEdgeInsets) -> Self {
    base.verticalScrollIndicatorInsets = insets
    return self
  }
  
  /// PropertySetter wrapper for `.automaticallyAdjustsScrollIndicatorInsets`
  /// - **Summary:**  A Boolean value that indicates whether the system automatically adjusts the scroll indicator insets.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiscrollview/3198043-automaticallyadjustsscrollindica) for more info.
  @inlinable
  @discardableResult
  func automaticallyAdjustsScrollIndicatorInsets(_ bool: Bool) -> Self {
    base.automaticallyAdjustsScrollIndicatorInsets = bool
    return self
  }
  
  /// PropertySetter wrapper for `.showsHorizontalScrollIndicator`
  /// - **Summary:**  A Boolean value that controls whether the horizontal scroll indicator is visible.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiscrollview/1619380-showshorizontalscrollindicator) for more info.
  @inlinable
  @discardableResult
  func showsHorizontalScrollIndicator(_ bool: Bool) -> Self {
    base.showsHorizontalScrollIndicator = bool
    return self
  }
  
  /// PropertySetter wrapper for `.showsVerticalScrollIndicator`
  /// - **Summary:**  A Boolean value that controls whether the vertical scroll indicator is visible.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiscrollview/1619405-showsverticalscrollindicator) for more info.
  @inlinable
  @discardableResult
  func showsVerticalScrollIndicator(_ bool: Bool) -> Self {
    base.showsVerticalScrollIndicator = bool
    return self
  }
  
  /// PropertySetter wrapper for `.indicatorStyle`
  /// - **Summary:**  The style of the scroll indicators.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiscrollview/1619433-indicatorstyle) for more info.
  @inlinable
  @discardableResult
  func indicatorStyle(_ style: UIScrollView.IndicatorStyle) -> Self {
    base.indicatorStyle = style
    return self
  }
  
  /// PropertySetter wrapper for `.alwaysBounceVertical`
  /// - **Summary:**  A Boolean value that determines whether bouncing always occurs when vertical scrolling reaches the end of the content.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiscrollview/1619383-alwaysbouncevertical) for more info.
  @inlinable
  @discardableResult
  func alwaysBounceVertical(_ bool: Bool) -> Self {
    base.alwaysBounceVertical = bool
    return self
  }
  
  /// PropertySetter wrapper for `.alwaysBounceHorizontal`
  /// - **Summary:**  A Boolean value that determines whether bouncing always occurs when horizontal scrolling reaches the end of the content view.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiscrollview/1619393-alwaysbouncehorizontal) for more info.
  @inlinable
  @discardableResult
  func alwaysBounceHorizontal(_ bool: Bool) -> Self {
    base.alwaysBounceHorizontal = bool
    return self
  }
  
  /// PropertySetter wrapper for `.bounces`
  /// - **Summary:**  A Boolean value that controls whether the scroll view bounces past the edge of content and back again.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiscrollview/1619420-bounces) for more info.
  @inlinable
  @discardableResult
  func bounces(_ bool: Bool) -> Self {
    base.bounces = bool
    return self
  }
  
  /// PropertySetter wrapper for `.bouncesZoom`
  /// - **Summary:**  A Boolean value that determines whether the scroll view animates the content scaling when the scaling exceeds the maximum or minimum limits.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiscrollview/1619410-bounceszoom) for more info.
  @inlinable
  @discardableResult
  func bouncesZoom(_ bool: Bool) -> Self {
    base.bouncesZoom = bool
    return self
  }
  
  /// PropertySetter wrapper for `.canCancelContentTouches`
  /// - **Summary:**  A Boolean value that controls whether touches in the content view always lead to tracking.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiscrollview/1619424-cancancelcontenttouches) for more info.
  @inlinable
  @discardableResult
  func canCancelContentTouches(_ bool: Bool) -> Self {
    base.canCancelContentTouches = bool
    return self
  }
  
  /// PropertySetter wrapper for `.decelerationRate`
  /// - **Summary:**  A floating-point value that determines the rate of deceleration after the user lifts their finger.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiscrollview/1619438-decelerationrate) for more info.
  @inlinable
  @discardableResult
  func decelerationRate(_ decelerationRate: UIScrollView.DecelerationRate) -> Self {
    base.decelerationRate = decelerationRate
    return self
  }
  
  /// PropertySetter wrapper for `.indexDisplayMode`
  /// - **Summary:**  The manner in which the index appears while the user is scrolling.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiscrollview/2851452-indexdisplaymode) for more info.
  @inlinable
  @discardableResult
  func indexDisplayMode(_ mode: UIScrollView.IndexDisplayMode) -> Self {
    base.indexDisplayMode = mode
    return self
  }
  
  /// PropertySetter wrapper for `.isDirectionalLockEnabled = true`
  /// - **Summary:**  A Boolean value that determines whether scrolling is disabled in a particular direction.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiscrollview/1619390-isdirectionallockenabled) for more info.
  @inlinable
  @discardableResult
  func directionalLockEnabled() -> Self {
    base.isDirectionalLockEnabled = true
    return self
  }
  
  /// PropertySetter wrapper for `.isDirectionalLockEnabled = false`
  /// - **Summary:**  A Boolean value that determines whether scrolling is disabled in a particular direction.
  @inlinable
  @discardableResult
  func directionalLockDisabled() -> Self {
    base.isDirectionalLockEnabled = false
    return self
  }
  
  /// PropertySetter wrapper for `.keyboardDismissMode`
  /// - **Summary:**  The manner in which the system dismisses the keyboard when a drag begins in the scroll view.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiscrollview/1619437-keyboarddismissmode) for more info.
  @inlinable
  @discardableResult
  func keyboardDismissMode(_ mode: UIScrollView.KeyboardDismissMode) -> Self {
    base.keyboardDismissMode = mode
    return self
  }
  
  /// PropertySetter wrapper for `.maximumZoomScale`
  /// - **Summary:**  A floating-point value that specifies the maximum scale factor that can apply to the scroll view’s content.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiscrollview/1619408-maximumzoomscale) for more info.
  @inlinable
  @discardableResult
  func maximumZoomScale(_ scale: CGFloat) -> Self {
    base.maximumZoomScale = scale
    return self
  }
  
  /// PropertySetter wrapper for `.minimumZoomScale`
  /// - **Summary:**  A floating-point value that specifies the minimum scale factor that can apply to the scroll view’s content.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiscrollview/1619428-minimumzoomscale) for more info.
  @inlinable
  @discardableResult
  func minimumZoomScale(_ scale: CGFloat) -> Self {
    base.minimumZoomScale = scale
    return self
  }
  
  /// PropertySetter wrapper for `.zoomScale`
  /// - **Summary:**  A floating-point value that specifies the current scale factor applied to the scroll view’s content.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiscrollview/1619419-zoomscale) for more info.
  @inlinable
  @discardableResult
  func zoomScale(_ scale: CGFloat) -> Self {
    base.zoomScale = scale
    return self
  }
  
  /// PropertySetter wrapper for `.setZoomScale`
  /// - **Summary:**  A floating-point value that specifies the current zoom scale.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiscrollview/1619412-setzoomscale) for more info.
  @inlinable
  @discardableResult
  func zoomScale(_ scale: CGFloat, animated: Bool = true) -> Self {
    base.setZoomScale(scale, animated: animated)
    return self
  }
  
}

// MARK: - iOS17 properties
@available(iOS 17.0, *)
public extension PropertySetter where Base: UIScrollView {
  
  /// PropertySetter wrapper for `.allowsKeyboardScrolling`
  /// - **Summary:**  A Boolean value that determines whether the scroll view allows scrolling its content with hardware keyboard input.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiscrollview/4200080-allowskeyboardscrolling) for more info.
  @inlinable
  @discardableResult
  func allowsKeyboardScrolling(_ bool: Bool) -> Self {
    base.allowsKeyboardScrolling = bool
    return self
  }
}
