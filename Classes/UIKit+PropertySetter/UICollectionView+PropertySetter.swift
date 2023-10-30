//
//  UICollectionView+PropertySetter.swift
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

// MARK: - UICollectionView
public extension PropertySetter where Base: UICollectionView {
  
  /// PropertySetter wrapper for `.delegate`
  /// - **Summary:** The object that acts as the delegate of the collection view.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uicollectionview/1618033-delegate) for more info.
  @inlinable
  @discardableResult
  func delegate(_ delegate: UICollectionViewDelegate?) -> Self {
    base.delegate = delegate
    return self
  }
  
  /// PropertySetter wrapper for `.delegate`
  /// - **Summary:** The object that provides the data for the collection view.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uicollectionview/1618091-datasource) for more info.
  @inlinable
  @discardableResult
  func delegate(_ dataSource: UICollectionViewDataSource?) -> Self {
    base.dataSource = dataSource
    return self
  }
  
  /// PropertySetter wrapper for `.collectionViewLayout`
  /// - **Summary:**  The layout used to organize the collected view’s items.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uicollectionview/1618047-collectionviewlayout) for more info.
  @inlinable
  @discardableResult
  func delegate(_ layout: UICollectionViewLayout) -> Self {
    base.collectionViewLayout = layout
    return self
  }
  
  /// PropertySetter wrapper for `.register(_:, forCellWithReuseIdentifier:)`
  /// - **Summary:**  Registers a class for use in creating new collection view cells.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uicollectionview/1618089-register) for more info.
  @inlinable
  @discardableResult
  func register(_ cellClass: AnyClass?, forCellWithReuseIdentifier: String) -> Self {
    base.register(cellClass, forCellWithReuseIdentifier: forCellWithReuseIdentifier)
    return self
  }
  
  /// PropertySetter wrapper for `.register(_:, forSupplementaryViewOfKind:, withReuseIdentifier:)`
  /// - **Summary:**  Registers a class for use in creating supplementary views for the collection view.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uicollectionview/1618103-register) for more info.
  @inlinable
  @discardableResult
  func register(_ cellClass: AnyClass?, forSupplementaryViewOfKind: String, withReuseIdentifier: String) -> Self {
    base.register(cellClass, forSupplementaryViewOfKind: forSupplementaryViewOfKind, withReuseIdentifier: withReuseIdentifier)
    return self
  }
  
  /// PropertySetter wrapper for `.allowsMultipleSelection`
  /// - **Summary:**  A Boolean value that determines whether users can select more than one item in the collection view.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uicollectionview/1618024-allowsmultipleselection) for more info.
  @inlinable
  @discardableResult
  func allowsMultipleSelection(_ bool: Bool) -> Self {
    base.allowsMultipleSelection = bool
    return self
  }
  
  /// PropertySetter wrapper for `.allowsSelection`
  /// - **Summary:**  A Boolean value that indicates whether users can select items in the collection view.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uicollectionview/1618009-allowsselection) for more info.
  @inlinable
  @discardableResult
  func allowsSelection(_ bool: Bool) -> Self {
    base.allowsSelection = bool
    return self
  }
  
  /// PropertySetter wrapper for `.dragDelegate`
  /// - **Summary:**  The delegate object that manages the dragging of items from the collection view.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uicollectionview/2897404-dragdelegate) for more info.
  @inlinable
  @discardableResult
  func dragDelegate(_ delegate: UICollectionViewDragDelegate?) -> Self {
    base.dragDelegate = delegate
    return self
  }
  
  /// PropertySetter wrapper for `.dragInteractionEnabled`
  /// - **Summary:**  A Boolean value that indicates whether the collection view supports dragging content.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uicollectionview/2909041-draginteractionenabled) for more info.
  @inlinable
  @discardableResult
  func dragInteractionEnabled(_ bool: Bool) -> Self {
    base.dragInteractionEnabled = bool
    return self
  }
  
  /// PropertySetter wrapper for `.dropDelegate`
  /// - **Summary:**  The delegate object that manages the dropping of items into the collection view.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uicollectionview/2897491-dropdelegate) for more info.
  @inlinable
  @discardableResult
  func dropDelegate(_ delegate: UICollectionViewDropDelegate?) -> Self {
    base.dropDelegate = delegate
    return self
  }
  
  /// PropertySetter wrapper for `.isPrefetchingEnabled`
  /// - **Summary:**  A Boolean value that indicates whether cell and data prefetching are enabled.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uicollectionview/1771771-isprefetchingenabled) for more info.
  @inlinable
  @discardableResult
  func prefetchingEnabled(_ bool: Bool) -> Self {
    base.isPrefetchingEnabled = bool
    return self
  }
  
  /// PropertySetter wrapper for `.prefetchDataSource`
  /// - **Summary:**  The object that acts as the prefetching data source for the collection view, receiving notifications of upcoming cell data requirements.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uicollectionview/1771768-prefetchdatasource) for more info.
  @inlinable
  @discardableResult
  func prefetchDataSource(_ dataSource: UICollectionViewDataSourcePrefetching?) -> Self {
    base.prefetchDataSource = dataSource
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
  
  /// PropertySetter wrapper for `.remembersLastFocusedIndexPath`
  /// - **Summary:**  A Boolean value that indicates whether the collection view automatically assigns the focus to the item at the last focused index path.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uicollectionview/1618022-rememberslastfocusedindexpath) for more info.
  @inlinable
  @discardableResult
  func remembersLastFocusedIndexPath(_ bool: Bool) -> Self {
    base.remembersLastFocusedIndexPath = bool
    return self
  }
  
  /// PropertySetter wrapper for `.reorderingCadence`
  /// - **Summary:**  The speed at which items in the collection view are reordered to show potential drop locations.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uicollectionview/2897347-reorderingcadence) for more info.
  @inlinable
  @discardableResult
  func reorderingCadence(_ cadence: UICollectionView.ReorderingCadence) -> Self {
    base.reorderingCadence = cadence
    return self
  }
  
}

// MARK: - iOS14 properties
@available(iOS 14.0, *)
public extension PropertySetter where Base: UICollectionView {
  
  /// PropertySetter wrapper for `.isEditing`
  /// - **Summary:**  A Boolean value that determines whether the table view is in editing mode.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitableview/1615001-isediting) for more info.
  @inlinable
  @discardableResult
  func editing(_ bool: Bool) -> Self {
    base.isEditing = bool
    return self
  }
  
}

// MARK: - iOS15 properties
@available(iOS 15.0, *)
public extension PropertySetter where Base: UICollectionView {
  
  /// PropertySetter wrapper for `.selectionFollowsFocus`
  /// - **Summary:**  A Boolean value that triggers an automatic selection when focus moves to a cell.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uicollectionview/3573920-selectionfollowsfocus) for more info.
  @inlinable
  @discardableResult
  func selectionFollowsFocus(_ bool: Bool) -> Self {
    base.selectionFollowsFocus = bool
    return self
  }
  
  /// PropertySetter wrapper for `.allowsMultipleSelectionDuringEditing`
  /// - **Summary:** A Boolean value that controls whether users can select more than one cell simultaneously in editing mode.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uicollectionview/3600421-allowsmultipleselectionduringedi) for more info.
  @inlinable
  @discardableResult
  func allowsMultipleSelectionDuringEditing(_ bool: Bool) -> Self {
    base.allowsMultipleSelectionDuringEditing = bool
    return self
  }
  
  /// PropertySetter wrapper for `.allowsSelectionDuringEditing`
  /// - **Summary:**  A Boolean value that determines whether users can select cells while the collection view is in editing mode.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uicollectionview/3600422-allowsselectionduringediting) for more info.
  @inlinable
  @discardableResult
  func allowsSelectionDuringEditing(_ bool: Bool) -> Self {
    base.allowsSelectionDuringEditing = bool
    return self
  }
  
  /// PropertySetter wrapper for `.allowsFocus`
  /// - **Summary:**  A Boolean value that determines whether the collection view allows its cells to become focused.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uicollectionview/3795590-allowsfocus) for more info.
  @inlinable
  @discardableResult
  func allowsFocus(_ bool: Bool) -> Self {
    base.allowsFocus = bool
    return self
  }
  
  /// PropertySetter wrapper for `.allowsFocusDuringEditing`
  /// - **Summary:**  A Boolean value that determines whether the collection view allows its cells to become focused in edit mode.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uicollectionview/3795591-allowsfocusduringediting) for more info.
  @inlinable
  @discardableResult
  func allowsFocusDuringEditing(_ bool: Bool) -> Self {
    base.allowsFocusDuringEditing = bool
    return self
  }

}

// MARK: - iOS16 properties
@available(iOS 16.0, *)
public extension PropertySetter where Base: UICollectionView {
  
  /// PropertySetter wrapper for `.selfSizingInvalidation`
  /// - **Summary:**  The mode that the collection view uses for invalidating the size of self-sizing cells.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uicollectionview/4001100-selfsizinginvalidation) for more info.
  @inlinable
  @discardableResult
  func selfSizingInvalidation(_ invalidation: UICollectionView.SelfSizingInvalidation) -> Self {
    base.selfSizingInvalidation = invalidation
    return self
  }
  
}
