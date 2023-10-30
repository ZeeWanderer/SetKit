//
//  UITableViewCell+PropertySetter.swift
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

// MARK: - UITableViewCell
public extension PropertySetter where Base: UITableViewCell {
  
  /// PropertySetter wrapper to access navigationBar propertySetter directly
  /// - **Example:**
  /// ```swift
  /// final class MyCell: UITableViewCell {
  ///
  ///   private func setupUI() {
  ///      self.set
  ///        .selectionStyle(.none)
  ///        .backgroundColor(.clear)
  ///        // Set cell's contentView properties
  ///        .contentViewProperties { set in
  ///            set
  ///             .backgroundColor(.green)
  ///             .corners(.roundedRect(12))
  ///         }
  ///       // Fall back to the cell properties
  ///        .separatorInset(UIEdgeInsets(top: .zero, left: .zero, bottom: 3, right: .zero))
  ///   }
  ///  }
  /// ```
  /// >Tip: You can always set contentView properties using it's own PropertySetter directly: `contentView.set`
  /// 
  @discardableResult
  func contentViewProperties(_ block: @escaping (PropertySetter<UIView>) -> Void) -> Self {
    block(base.contentView.set)
    return self
  }
  
  /// PropertySetter wrapper for `.accessoryType`
  /// - **Summary:**  The type of standard accessory view for the cell to use in the table view’s normal state.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableviewcell/1623228-accessorytype) for more info.
  @discardableResult
  func accessoryType(_ accessoryType: UITableViewCell.AccessoryType) -> Self {
    base.accessoryType = accessoryType
    return self
  }
  
  /// PropertySetter wrapper for `.selectionStyle`
  /// - **Summary:**  The style of selection for a cell.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableviewcell/1623221-selectionstyle) for more info.
  @discardableResult
  func selectionStyle(_ style: UITableViewCell.SelectionStyle) -> Self {
    base.selectionStyle = style
    return self
  }
  
  /// PropertySetter wrapper for `.backgroundView`
  /// - **Summary:**  The view to use as the background of the cell.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableviewcell/1623260-backgroundview) for more info.
  @discardableResult
  func backgroundView(_ view: UIView?) -> Self {
    base.backgroundView = view
    return self
  }
  
  /// PropertySetter wrapper for `.selectedBackgroundView`
  /// - **Summary:**  The view to use as the background for a selected cell.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableviewcell/1623226-selectedbackgroundview) for more info.
  @discardableResult
  func selectedBackgroundView(_ view: UIView?) -> Self {
    base.selectedBackgroundView = view
    return self
  }
  
  /// PropertySetter wrapper for `.indentationLevel`
  /// - **Summary:**  The indentation level of the cell’s content.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableviewcell/1623252-indentationlevel) for more info.
  @discardableResult
  func indentationLevel(_ int: Int) -> Self {
    base.indentationLevel = int
    return self
  }
  
  /// PropertySetter wrapper for `.indentationLevel`
  /// - **Summary:**  The width for each level of indentation of a cell’s content.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableviewcell/1623247-indentationwidth) for more info.
  @discardableResult
  func indentationWidth(_ width: CGFloat) -> Self {
    base.indentationWidth = width
    return self
  }

  /// PropertySetter wrapper for `.separatorInset`
  /// - **Summary:**  The inset values for the separator line drawn beneath the cell.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableviewcell/1623250-separatorinset) for more info.
  @discardableResult
  func separatorInset(_ inset: UIEdgeInsets) -> Self {
    base.separatorInset = inset
    return self
  }
  
  /// PropertySetter wrapper for `.shouldIndentWhileEditing`
  /// - **Summary:**  A Boolean value that controls whether the cell background is indented when the table view is in editing mode.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableviewcell/1623214-shouldindentwhileediting) for more info.
  @discardableResult
  func shouldIndentWhileEditing(_ bool: Bool) -> Self {
    base.shouldIndentWhileEditing = bool
    return self
  }
  
  /// PropertySetter wrapper for `.showsReorderControl`
  /// - **Summary:**  A Boolean value that determines whether the cell shows the reordering control.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableviewcell/1623243-showsreordercontrol) for more info.
  @discardableResult
  func showsReorderControl(_ bool: Bool) -> Self {
    base.showsReorderControl = bool
    return self
  }
  
  /// PropertySetter wrapper for `.userInteractionEnabledWhileDragging`
  /// - **Summary:**  A Boolean value indicating whether users can interact with a cell while it is being dragged.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableviewcell/2897414-userinteractionenabledwhiledragg) for more info.
  @discardableResult
  func userInteractionEnabledWhileDragging(_ bool: Bool) -> Self {
    base.userInteractionEnabledWhileDragging = bool
    return self
  }
  
  /// PropertySetter wrapper for `.isEditing`
  /// - **Summary:**  A Boolean value that indicates whether the cell is in an editable state.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableviewcell/1623268-isediting) for more info.
  @discardableResult
  func editing(_ bool: Bool) -> Self {
    base.isEditing = bool
    return self
  }
  
  /// PropertySetter wrapper for `.isHighlighted`
  /// - **Summary:**  A Boolean value that indicates whether the cell is highlighted.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableviewcell/1623241-ishighlighted) for more info.
  @discardableResult
  func highlighted(_ bool: Bool) -> Self {
    base.isHighlighted = bool
    return self
  }
  
  /// PropertySetter wrapper for `.isSelected`
  /// - **Summary:**  A Boolean value that indicates whether the cell is selected.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableviewcell/1623263-isselected) for more info.
  @discardableResult
  func selected(_ bool: Bool) -> Self {
    base.isSelected = bool
    return self
  }
  
  /// PropertySetter wrapper for `.setEditing(_ editing: Bool, animated: Bool)`
  /// - **Summary:**  Toggles the cell into and out of editing mode.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableviewcell/1623222-setediting) for more info.
  @discardableResult
  func editing(_ bool: Bool, animated: Bool = true) -> Self {
    base.setEditing(bool, animated: animated)
    return self
  }
  
  /// PropertySetter wrapper for `.setHighlighted(_ highlighted: Bool, animated: Bool)`
  /// - **Summary:**  Sets the highlighted state of the cell, optionally animating the transition between states.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableviewcell/1623280-sethighlighted) for more info.
  @discardableResult
  func highlighted(_ bool: Bool, animated: Bool = true) -> Self {
    base.setHighlighted(bool, animated: animated)
    return self
  }
  
  /// PropertySetter wrapper for `.setSelected(_ selected: Bool, animated: Bool)`
  /// - **Summary:**  Sets the selected state of the cell, optionally animating the transition between states.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableviewcell/1623255-setselected) for more info.
  @discardableResult
  func selected(_ bool: Bool, animated: Bool = true) -> Self {
    base.setSelected(bool, animated: animated)
    return self
  }
  
}

// MARK: - iOS14 properties
@available(iOS 14.0, *)
public extension PropertySetter where Base: UITableViewCell {
  
  /// PropertySetter wrapper for `.setNeedsUpdateConfiguration()`
  /// - **Summary:**  Informs the cell to update its configuration for its current state.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableviewcell/3600590-setneedsupdateconfiguration) for more info.
  @discardableResult
  func needsUpdateConfiguration() -> Self {
    base.setNeedsUpdateConfiguration()
    return self
  }
}
