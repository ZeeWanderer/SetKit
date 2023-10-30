//
//  UISegmentedControl+PropertySetter.swift
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

// MARK: - UISegmentedControl
public extension PropertySetter where Base: UISegmentedControl {
  
  /// PropertySetter wrapper for `.date`
  /// - **Summary:**  The index number that identifies the selected segment that the user last touched.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisegmentedcontrol/1618575-selectedsegmentindex) for more info.
  @inlinable
  @discardableResult
  func selectedSegmentIndex(_ index: Int) -> Self {
    base.selectedSegmentIndex = index
    return self
  }
  
  /// PropertySetter wrapper for `.apportionsSegmentWidthsByContent`
  /// - **Summary:**  Indicates whether the control attempts to adjust segment widths based on their content widths.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisegmentedcontrol/1618578-apportionssegmentwidthsbycontent) for more info.
  @inlinable
  @discardableResult
  func apportionsSegmentWidthsByContent(_ bool: Bool) -> Self {
    base.apportionsSegmentWidthsByContent = bool
    return self
  }
  
  /// PropertySetter wrapper for `.isMomentary`
  /// - **Summary:**  A Boolean value that determines whether segments in the segmented control show selected state.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisegmentedcontrol/1618586-ismomentary) for more info.
  @inlinable
  @discardableResult
  func isMomentary(_ bool: Bool) -> Self {
    base.isMomentary = bool
    return self
  }
  
  /// PropertySetter wrapper for `.isSpringLoaded`
  /// - **Summary:**  A Boolean value that specifies whether the object is participating in spring-loaded interaction for a drag and drop activity.
  @inlinable
  @discardableResult
  func isSpringLoaded(_ bool: Bool) -> Self {
    base.isSpringLoaded = bool
    return self
  }
  
  /// PropertySetter wrapper for `.selectedSegmentTintColor`
  /// - **Summary:**  The color to use for highlighting the currently selected segment.
  @inlinable
  @discardableResult
  func selectedSegmentTintColor(_ color: UIColor?) -> Self {
    base.selectedSegmentTintColor = color
    return self
  }
  
  /// PropertySetter wrapper for `.tintColor`
  /// - **Summary:**  The first nondefault tint color value in the view’s hierarchy, ascending from and starting with the view itself.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiview/1622467-tintcolor) for more info.
  @inlinable
  @discardableResult
  func tintColor(_ color: UIColor) -> Self {
    base.tintColor = color
    return self
  }
  
  /// PropertySetter wrapper for `.setTitleTextAttributes(_:, for:)`
  /// - **Summary:**  Sets the text attributes of the title for a given control state.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisegmentedcontrol/1618570-settitletextattributes) for more info.
  @inlinable
  @discardableResult
  func tintColor(_ attributes: [NSAttributedString.Key: Any]?, for state: UIControl.State) -> Self {
    base.setTitleTextAttributes(attributes, for: state)
    return self
  }
  
  /// PropertySetter wrapper for `.setImage(_:, forSegmentAt:)`
  /// - **Summary:**  Sets the content of a segment to a given image.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisegmentedcontrol/1618582-setimage) for more info.
  @inlinable
  @discardableResult
  func image(_ image: UIImage?, forSegmentAt index: Int) -> Self {
    base.setImage(image, forSegmentAt: index)
    return self
  }
  
  /// PropertySetter wrapper for `.setTitle(_:, forSegmentAt:)`
  /// - **Summary:**  Sets the title of a segment.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisegmentedcontrol/1618556-settitle) for more info.
  @inlinable
  @discardableResult
  func title(_ title: String?, forSegmentAt index: Int) -> Self {
    base.setTitle(title, forSegmentAt: index)
    return self
  }
  
  /// PropertySetter wrapper for `.setEnabled(_:, forSegmentAt:)`
  /// - **Summary:**  Enables the segment you specify.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisegmentedcontrol/1618567-setenabled) for more info.
  @inlinable
  @discardableResult
  func enabled(_ bool: Bool, forSegmentAt index: Int) -> Self {
    base.setEnabled(bool, forSegmentAt: index)
    return self
  }
  
  /// PropertySetter wrapper for `.setWidth(_:, forSegmentAt:)`
  /// - **Summary:**  Sets the width of the segment at the index you specify.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisegmentedcontrol/1618584-setwidth) for more info.
  @inlinable
  @discardableResult
  func width(_ value: CGFloat, forSegmentAt index: Int) -> Self {
    base.setWidth(value, forSegmentAt: index)
    return self
  }
  
  /// PropertySetter wrapper for `.setContentOffset(_:, forSegmentAt:)`
  /// - **Summary:**  Adjusts the offset for drawing the content (image or text) of the specified segment.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisegmentedcontrol/1618574-setcontentoffset) for more info.
  @inlinable
  @discardableResult
  func contentOffset(_ size: CGSize, forSegmentAt index: Int) -> Self {
    base.setContentOffset(size, forSegmentAt: index)
    return self
  }
  
  /// PropertySetter wrapper for `.setBackgroundImage(_:, for:, barMetrics:)`
  /// - **Summary:**  Sets the background image for given state and bar metrics.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisegmentedcontrol/1618571-setbackgroundimage) for more info.
  @inlinable
  @discardableResult
  func backgroundImage(_ image: UIImage?, for state: UIControl.State, barMetrics: UIBarMetrics) -> Self {
    base.setBackgroundImage(image, for: state, barMetrics: barMetrics)
    return self
  }
  
  /// PropertySetter wrapper for `.setContentPositionAdjustment(_:, forSegmentType:, barMetrics:)`
  /// - **Summary:**  Sets the content positioning offset for a given segment and bar metrics.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisegmentedcontrol/1618555-setcontentpositionadjustment) for more info.
  @inlinable
  @discardableResult
  func backgroundImage(_ adjustment: UIOffset, forSegmentType: UISegmentedControl.Segment, barMetrics: UIBarMetrics) -> Self {
    base.setContentPositionAdjustment(adjustment, forSegmentType: forSegmentType, barMetrics: barMetrics)
    return self
  }
  
  /// PropertySetter wrapper for `.setDividerImage(_:, forLeftSegmentState:, rightSegmentState:, barMetrics:)`
  /// - **Summary:**  Sets the divider image to use for a given combination of left and right segment states and bar metrics.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisegmentedcontrol/1618558-setdividerimage) for more info.
  @inlinable
  @discardableResult
  func dividerImage(_ dividerImage: UIImage?, forLeftSegmentState: UIControl.State, rightSegmentState: UIControl.State, barMetrics: UIBarMetrics) -> Self {
    base.setDividerImage(dividerImage, forLeftSegmentState: forLeftSegmentState, rightSegmentState: rightSegmentState, barMetrics: barMetrics)
    return self
  }
  
}

// MARK: - iOS14 properties
@available(iOS 14, *)
public extension PropertySetter where Base: UISegmentedControl {
  
  /// PropertySetter wrapper for `.setAction(_:, forSegmentAt:)`
  /// - **Summary:**  Sets the action for the segment at the index you specify.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisegmentedcontrol/3600583-setaction) for more info.
  @inlinable
  @discardableResult
  func action(_ action: UIAction, forSegmentAt index: Int) -> Self {
    base.setAction(action, forSegmentAt: index)
    return self
  }
}
