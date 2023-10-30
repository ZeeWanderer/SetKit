//
//  UITableView+PropertySetter.swift
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

// MARK: - UITableView
public extension PropertySetter where Base: UITableView {
  
  /// PropertySetter wrapper for `.delegate`
  /// - **Summary:** The object that acts as the delegate of the table view.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableview/1614894-delegate) for more info.
  @inlinable
  @discardableResult
  func delegate(_ delegate: UITableViewDelegate?) -> Self {
    base.delegate = delegate
    return self
  }
  
  /// PropertySetter wrapper for `.dataSource`
  /// - **Summary:** The object that acts as the data source of the table view.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableview/1614955-datasource) for more info.
  @inlinable
  @discardableResult
  func dataSource(_ dataSource: UITableViewDataSource?) -> Self {
    base.dataSource = dataSource
    return self
  }
  
  /// PropertySetter wrapper for `.rowHeight`
  /// - **Summary:** The default height in points of each row in the table view.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableview/1614852-rowheight) for more info.
  @inlinable
  @discardableResult
  func rowHeight(_ rowHeight: CGFloat) -> Self {
    base.rowHeight = rowHeight
    return self
  }
  
  /// PropertySetter wrapper for `.estimatedRowHeight`
  /// - **Summary:** The estimated height of rows in the table view.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableview/1614925-estimatedrowheight) for more info.
  @inlinable
  @discardableResult
  func estimatedRowHeight(_ rowHeight: CGFloat) -> Self {
    base.estimatedRowHeight = rowHeight
    return self
  }
  
  /// PropertySetter wrapper for `.tableHeaderView`
  /// - **Summary:** The view that displays above the table’s content.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableview/1614904-tableheaderview) for more info.
  @inlinable
  @discardableResult
  func tableHeaderView(_ view: UIView?) -> Self {
    base.tableHeaderView = view
    return self
  }
  
  /// PropertySetter wrapper for `.tableFooterView`
  /// - **Summary:** The view that displays below the table’s content.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableview/1614976-tablefooterview) for more info.
  @inlinable
  @discardableResult
  func tableFooterView(_ view: UIView?) -> Self {
    base.tableFooterView = view
    return self
  }
  
  /// PropertySetter wrapper for `.register(_ nib: UINib?, forCellReuseIdentifier: String)`
  /// - **Summary:** Registers a nib object that contains a cell with the table view under a specified identifier.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableview/1614937-register) for more info.
  @inlinable
  @discardableResult
  func register(_ nib: UINib?, forCellReuseIdentifier identifier: String) -> Self {
    base.register(nib, forCellReuseIdentifier: identifier)
    return self
  }
  
  /// PropertySetter wrapper for `.register(_ nib: UINib?, forHeaderFooterViewReuseIdentifier: String)`
  /// - **Summary:**  Registers a nib object that contains a header or footer with the table view under a specified identifier.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableview/1614921-register) for more info.
  @inlinable
  @discardableResult
  func register(_ nib: UINib?, forHeaderFooterViewReuseIdentifier identifier: String) -> Self {
    base.register(nib, forHeaderFooterViewReuseIdentifier: identifier)
    return self
  }
  
  /// PropertySetter wrapper for `.backgroundView`
  /// - **Summary:**  The background view of the table view.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableview/1614986-backgroundview) for more info.
  @inlinable
  @discardableResult
  func backgroundView(_ view: UIView?) -> Self {
    base.backgroundView = view
    return self
  }
  
  /// PropertySetter wrapper for `.allowsSelection`
  /// - **Summary:** A Boolean value that determines whether users can select a row.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableview/1614911-allowsselection) for more info.
  ///
  /// **PropertySetter description**
  ///
  /// - If you want to restrict selection of cells in editing mode, use ``SetKit/PropertySetter/allowsSelectionDuringEditing(_:)``
  @inlinable
  @discardableResult
  func allowsSelection(_ bool: Bool) -> Self {
    base.allowsSelection = bool
    return self
  }
  
  /// PropertySetter wrapper for `.allowsSelectionDuringEditing`
  /// - **Summary:** A Boolean value that determines whether users can select cells while the table view is in editing mode.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableview/1614889-allowsselectionduringediting) for more info.
  ///
  /// **PropertySetter description**
  ///
  /// If you want to restrict selection of cells regardless of mode, use  ``SetKit/PropertySetter/allowsSelection(_:)``
  @inlinable
  @discardableResult
  func allowsSelectionDuringEditing(_ bool: Bool) -> Self {
    base.allowsSelectionDuringEditing = bool
    return self
  }
  
  /// PropertySetter wrapper for `.cellLayoutMarginsFollowReadableWidth`
  /// - **Summary:**  A Boolean value that indicates whether the cell margins derive from the width of the readable content guide.
  @inlinable
  @discardableResult
  func cellLayoutMarginsFollowReadableWidth(_ bool: Bool) -> Self {
    base.cellLayoutMarginsFollowReadableWidth = bool
    return self
  }
  
  /// PropertySetter wrapper for `.dragDelegate`
  /// - **Summary:** The delegate object that manages the dragging of items from the table view.
  @inlinable
  @discardableResult
  func dragDelegate(_ delegate: UITableViewDragDelegate?) -> Self {
    base.dragDelegate = delegate
    return self
  }
  
  /// PropertySetter wrapper for `.dragInteractionEnabled`
  /// - **Summary:**  A Boolean value that indicates whether the cell margins derive from the width of the readable content guide.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableview/2909064-draginteractionenabled) for more info.
  @inlinable
  @discardableResult
  func dragInteractionEnabled(_ bool: Bool) -> Self {
    base.dragInteractionEnabled = bool
    return self
  }
  
  /// PropertySetter wrapper for `.dropDelegate`
  /// - **Summary:** The delegate object that manages the dropping of content into the table view.
  @inlinable
  @discardableResult
  func dropDelegate(_ delegate: UITableViewDropDelegate?) -> Self {
    base.dropDelegate = delegate
    return self
  }
  
  /// PropertySetter wrapper for `.sectionIndexColor`
  /// - **Summary:** The color to use for the table view’s index text.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableview/1614915-sectionindexcolor) for more info.
  @inlinable
  @discardableResult
  func sectionIndexColor(_ color: UIColor?) -> Self {
    base.sectionIndexColor = color
    return self
  }
  
  /// PropertySetter wrapper for `.sectionFooterHeight`
  ///
  /// - **Summary:** The height of section footers in the table view.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableview/1614846-sectionfooterheight) for more info.
  @inlinable
  @discardableResult
  func sectionFooterHeight(_ cgFloat: CGFloat) -> Self {
    base.sectionFooterHeight = cgFloat
    return self
  }
  
  /// PropertySetter wrapper for `.sectionHeaderHeight`
  ///
  /// - **Summary:** The height of section headers in the table view.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableview/1614863-sectionheaderheight) for more info.
  @inlinable
  @discardableResult
  func sectionHeaderHeight(_ cgFloat: CGFloat) -> Self {
    base.sectionHeaderHeight = cgFloat
    return self
  }
  
  /// PropertySetter wrapper for `.sectionIndexBackgroundColor`
  /// - **Summary:** The color to use for the background of the table view’s section index.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableview/1614918-sectionindexbackgroundcolor) for more info.
  @inlinable
  @discardableResult
  func sectionIndexBackgroundColor(_ color: UIColor?) -> Self {
    base.sectionIndexBackgroundColor = color
    return self
  }
  
  /// PropertySetter wrapper for `.sectionIndexTrackingBackgroundColor`
  /// - **Summary:** The color to use for the table view’s index background area.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableview/1614992-sectionindextrackingbackgroundco) for more info.
  @inlinable
  @discardableResult
  func sectionIndexTrackingBackgroundColor(_ color: UIColor?) -> Self {
    base.sectionIndexTrackingBackgroundColor = color
    return self
  }
  
  /// PropertySetter wrapper for `.sectionIndexMinimumDisplayRowCount`
  /// - **Summary:** The number of table rows at which to display the index list on the right edge of the table.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableview/1614903-sectionindexminimumdisplayrowcou) for more info.
  @inlinable
  @discardableResult
  func sectionIndexMinimumDisplayRowCount(_ int: Int) -> Self {
    base.sectionIndexMinimumDisplayRowCount = int
    return self
  }
  
  /// PropertySetter wrapper for `.estimatedSectionFooterHeight`
  /// - **Summary:** The estimated height of section footers in the table view.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableview/1614979-estimatedsectionfooterheight) for more info.
  @inlinable
  @discardableResult
  func estimatedSectionFooterHeight(_ cgFloat: CGFloat) -> Self {
    base.estimatedSectionFooterHeight = cgFloat
    return self
  }
  
  /// PropertySetter wrapper for `.estimatedSectionHeaderHeight`
  /// - **Summary:** The estimated height of section headers in the table view.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableview/1614957-estimatedsectionheaderheight) for more info.
  @inlinable
  @discardableResult
  func estimatedSectionHeaderHeight(_ cgFloat: CGFloat) -> Self {
    base.estimatedSectionHeaderHeight = cgFloat
    return self
  }
  
  /// PropertySetter wrapper for `.insetsContentViewsToSafeArea`
  /// - **Summary:**  A Boolean value that indicates whether the table view adjusts the content views of its cells, headers, and footers to fit within the safe area.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableview/2921665-insetscontentviewstosafearea) for more info.
  @inlinable
  @discardableResult
  func insetsContentViewsToSafeArea(_ bool: Bool) -> Self {
    base.insetsContentViewsToSafeArea = bool
    return self
  }
  
  /// PropertySetter wrapper for `.isEditing`
  /// - **Summary:**  A Boolean value that determines whether the table view is in editing mode.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableview/1615001-isediting) for more info.
  ///
  /// **PropertyWrapper description:**
  ///
  /// - If you want to animate the change use ``SetKit/PropertySetter/editing(_:animated:)-u1cl``
  @inlinable
  @discardableResult
  func editing(_ bool: Bool) -> Self {
    base.isEditing = bool
    return self
  }
  
  /// PropertySetter wrapper for `.setEditing(Bool, animated: Bool)`
  /// - **Summary:**  Toggles the table view into and out of editing mode.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableview/1614876-setediting) for more info.
  @inlinable
  @discardableResult
  func editing(_ editing: Bool, animated: Bool) -> Self {
    base.setEditing(editing, animated: animated)
    return self
  }
  
  /// PropertySetter wrapper for `.isSpringLoaded`
  /// - **Summary:**  A Boolean value that specifies whether the object is participating in spring-loaded interaction for a drag and drop activity.
  @inlinable
  @discardableResult
  func springLoaded(_ bool: Bool) -> Self {
    base.isSpringLoaded = bool
    return self
  }
  
  /// PropertySetter wrapper for `.prefetchDataSource`
  /// - **Summary:**  The object that acts as the prefetching data source for the table view, receiving notifications of upcoming cell data requirements.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableview/1771763-prefetchdatasource) for more info.
  @inlinable
  @discardableResult
  func prefetchDataSource(_ dataSource: UITableViewDataSourcePrefetching?) -> Self {
    base.prefetchDataSource = dataSource
    return self
  }
  
  /// PropertySetter wrapper for `.remembersLastFocusedIndexPath`
  /// - **Summary:**  A Boolean value that indicates whether the table view automatically returns the focus to the cell at the last focused index path.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableview/1614858-rememberslastfocusedindexpath) for more info.
  @inlinable
  @discardableResult
  func remembersLastFocusedIndexPath(_ bool: Bool) -> Self {
    base.remembersLastFocusedIndexPath = bool
    return self
  }
  
  /// PropertySetter wrapper for `.separatorColor`
  /// - **Summary:**  The color of separator rows in the table view.
  /// - Default value: The default color is gray.
  @inlinable
  @discardableResult
  func separatorColor(_ color: UIColor) -> Self {
    base.separatorColor = color
    return self
  }
  
  /// PropertySetter wrapper for `.separatorInset`
  /// - **Summary:**  The default inset of cell separators.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableview/1614851-separatorinset) for more info.
  @inlinable
  @discardableResult
  func separatorInset(_ inset: UIEdgeInsets) -> Self {
    base.separatorInset = inset
    return self
  }
  
  /// PropertySetter wrapper for `.separatorStyle`
  /// - **Summary:**  The style for table cells to use as separators.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableview/1614909-separatorstyle) for more info.
  @inlinable
  @discardableResult
  func separatorStyle(_ style: UITableViewCell.SeparatorStyle) -> Self {
    base.separatorStyle = style
    return self
  }
  
  /// PropertySetter wrapper for `.separatorStyle`
  /// - **Summary:**  The effect to apply to table separators.
  @inlinable
  @discardableResult
  func separatorEffect(_ effect: UIVisualEffect?) -> Self {
    base.separatorEffect = effect
    return self
  }
  
  /// PropertySetter wrapper for `.separatorInsetReference`
  /// - **Summary:**  An indicator of how to interpret the separator inset value.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableview/2887517-separatorinsetreference) for more info.
  @inlinable
  @discardableResult
  func separatorInsetReference(_ style: UITableView.SeparatorInsetReference) -> Self {
    base.separatorInsetReference = style
    return self
  }
  
}

// MARK: - iOS14 properties
@available(iOS 14.0, *)
public extension PropertySetter where Base: UITableView {
  
  /// PropertySetter wrapper for `.selectionFollowsFocus`
  /// - **Summary:** A Boolean value that triggers an automatic selection when focus moves to a cell.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableview/3573921-selectionfollowsfocus) for more info.
  @inlinable
  @discardableResult
  func selectionFollowsFocus(_ bool: Bool) -> Self {
    base.selectionFollowsFocus = bool
    return self
  }
}

// MARK: - iOS15 properties
@available(iOS 15.0, *)
public extension PropertySetter where Base: UITableView {
  
  /// PropertySetter wrapper for `.selectionFollowsFocus`
  /// - **Summary:** A Boolean value that determines whether the table view allows its cells to become focused.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableview/3795594-allowsfocus) for more info.
  @inlinable
  @discardableResult
  func allowsFocus(_ bool: Bool) -> Self {
    base.allowsFocus = bool
    return self
  }
  
  /// PropertySetter wrapper for `.allowsFocusDuringEditing`
  /// - **Summary:** A Boolean value that determines whether the table view allows its cells to become focused in edit mode.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableview/3795595-allowsfocusduringediting) for more info.
  @inlinable
  @discardableResult
  func allowsFocusDuringEditing(_ bool: Bool) -> Self {
    base.allowsFocusDuringEditing = bool
    return self
  }
  
  /// PropertySetter wrapper for `.isPrefetchingEnabled`
  /// - **Summary:** A Boolean value that indicates whether to allow cell and data prefetching.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableview/3801922-isprefetchingenabled) for more info.
  @inlinable
  @discardableResult
  func prefetchingEnabled(_ bool: Bool) -> Self {
    base.isPrefetchingEnabled = bool
    return self
  }
  
  /// PropertySetter wrapper for `.isPrefetchingEnabled`
  /// - **Summary:** The height for empty rows that fill the table view.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableview/3801921-fillerrowheight) for more info.
  @inlinable
  @discardableResult
  func fillerRowHeight(_ height: CGFloat) -> Self {
    base.fillerRowHeight = height
    return self
  }
  
}

// MARK: - iOS16 properties
@available(iOS 16.0, *)
public extension PropertySetter where Base: UITableView {
  
  /// PropertySetter wrapper for `.selfSizingInvalidation`
  /// - **Summary:** The mode that the table view uses for invalidating the size of self-sizing cells.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableview/4001105-selfsizinginvalidation) for more info.
  @inlinable
  @discardableResult
  func selfSizingInvalidation(_ invalidation: UITableView.SelfSizingInvalidation) -> Self {
    base.selfSizingInvalidation = invalidation
    return self
  }
  
}
