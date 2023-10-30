//
//  UICollectionViewCell+PropertySetter.swift
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

// MARK: - UICollectionViewCell
public extension PropertySetter where Base: UICollectionViewCell {
  
  /// PropertySetter wrapper to access navigationBar propertySetter directly
  /// - **Example:**
  /// ```swift
  /// final class MyCell: UICollectionViewCell {
  ///
  ///   private func setupUI() {
  ///      self.set
  ///        .backgroundColor(.clear)
  ///        // Set cell's contentView properties
  ///        .contentViewProperties { set in
  ///            set
  ///             .backgroundColor(.green)
  ///             .corners(.roundedRect(12))
  ///         }
  ///       // Fall back to the cell properties
  ///        .highlighted(true)
  ///   }
  ///  }
  /// ```
  /// >Tip: You can always set contentView properties using it's own PropertySetter directly: `contentView.set`
  @inlinable
  @discardableResult
  func contentViewProperties(_ block: @escaping (PropertySetter<UIView>) -> Void) -> Self {
    block(base.contentView.set)
    return self
  }
  
  /// PropertySetter wrapper for `.isSelected`
  /// - **Summary:** The selection state of the cell.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uicollectionviewcell/1620130-isselected) for more info.
  @inlinable
  @discardableResult
  func selected(_ bool: Bool) -> Self {
    base.isSelected = bool
    return self
  }
  
  /// PropertySetter wrapper for `.backgroundView`
  /// - **Summary:**  The view that displays behind the cell’s other content.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uicollectionviewcell/1620131-backgroundview) for more info.
  @inlinable
  @discardableResult
  func backgroundView(_ view: UIView?) -> Self {
    base.backgroundView = view
    return self
  }
  
  /// PropertySetter wrapper for `.isHighlighted`
  /// - **Summary:**  The highlight state of the cell.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uicollectionviewcell/1620134-ishighlighted) for more info.
  @inlinable
  @discardableResult
  func highlighted(_ bool: Bool) -> Self {
    base.isHighlighted = bool
    return self
  }
  
  /// PropertySetter wrapper for `.selectedBackgroundView`
  /// - **Summary:**  The view that displays just above the background view for a selected cell.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uicollectionviewcell/1620138-selectedbackgroundview) for more info.
  @inlinable
  @discardableResult
  func selectedBackgroundView(_ view: UIView?) -> Self {
    base.selectedBackgroundView = view
    return self
  }
  
}

// MARK: - iOS14 properties
@available(iOS 14.0, *)
public extension PropertySetter where Base: UICollectionViewCell {
  
  /// PropertySetter wrapper for `.automaticallyUpdatesBackgroundConfiguration`
  /// - **Summary:**  A Boolean value that determines whether the cell automatically updates its background configuration when its state changes.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uicollectionviewcell/3600427-automaticallyupdatesbackgroundco) for more info.
  @inlinable
  @discardableResult
  func automaticallyUpdatesBackgroundConfiguration(_ bool: Bool) -> Self {
    base.automaticallyUpdatesBackgroundConfiguration = bool
    return self
  }
  
  /// PropertySetter wrapper for `.automaticallyUpdatesContentConfiguration`
  /// - **Summary:**  A Boolean value that determines whether the cell automatically updates its content configuration when its state changes.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uicollectionviewcell/3600428-automaticallyupdatescontentconfi) for more info.
  @inlinable
  @discardableResult
  func automaticallyUpdatesContentConfiguration(_ bool: Bool) -> Self {
    base.automaticallyUpdatesContentConfiguration = bool
    return self
  }
  
  /// PropertySetter wrapper for `.backgroundConfiguration`
  /// - **Summary:**  The current background configuration of the cell.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uicollectionviewcell/3600947-backgroundconfiguration) for more info.
  @inlinable
  @discardableResult
  func backgroundConfiguration(_ configuration: UIBackgroundConfiguration?) -> Self {
    base.backgroundConfiguration = configuration
    return self
  }
  
  /// PropertySetter wrapper for `.contentConfiguration`
  /// - **Summary:**  The current content configuration of the cell.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uicollectionviewcell/3600949-contentconfiguration) for more info.
  @inlinable
  @discardableResult
  func contentConfiguration(_ configuration: UIContentConfiguration?) -> Self {
    base.contentConfiguration = configuration
    return self
  }
}

// MARK: - iOS15 properties
@available(iOS 15.0, *)
public extension PropertySetter where Base: UICollectionViewCell {
  
  /// PropertySetter wrapper for `.configurationUpdateHandler`
  /// - **Summary:**  A block for handling updates to the cell’s configuration using the current state.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uicollectionviewcell/3751733-configurationupdatehandler) for more info.
  @inlinable
  @discardableResult
  func configurationUpdateHandler(_ handler:  UICollectionViewCell.ConfigurationUpdateHandler?) -> Self {
    base.configurationUpdateHandler = handler
    return self
  }

}
