//
//  UISearchController+PropertySetter.swift
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

// MARK: - UISearchController
public extension PropertySetter where Base: UISearchController {
  
  /// PropertySetter wrapper for `.delegate`
  /// - **Summary:**  The search controller’s delegate.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisearchcontroller/1618654-delegate) for more info.
  @inlinable
  @discardableResult
  func delegate(_ delegate: UISearchControllerDelegate?) -> Self {
    base.delegate = delegate
    return self
  }
  
  /// PropertySetter wrapper for `.searchResultsUpdater`
  /// - **Summary:**  The object responsible for updating the contents of the search results controller.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisearchcontroller/1618661-searchresultsupdater) for more info.
  @inlinable
  @discardableResult
  func searchResultsUpdater(_ update: UISearchResultsUpdating?) -> Self {
    base.searchResultsUpdater = update
    return self
  }

  /// PropertySetter wrapper for `.obscuresBackgroundDuringPresentation`
  /// - **Summary:**  A Boolean indicating whether to obscure the underlying content during a search.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisearchcontroller/1618656-obscuresbackgroundduringpresenta) for more info.
  @inlinable
  @discardableResult
  func obscuresBackgroundDuringPresentation(_ bool: Bool) -> Self {
    base.obscuresBackgroundDuringPresentation = bool
    return self
  }
  
  /// PropertySetter wrapper for `.automaticallyShowsCancelButton`
  /// - **Summary:**  A Boolean indicating whether the search controller manages the visibility of the search bar’s cancel button.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisearchcontroller/3152926-automaticallyshowscancelbutton) for more info.
  @inlinable
  @discardableResult
  func automaticallyShowsCancelButton(_ bool: Bool) -> Self {
    base.automaticallyShowsCancelButton = bool
    return self
  }
  
  /// PropertySetter wrapper for `.automaticallyShowsSearchResultsController`
  /// - **Summary:**  A Boolean indicating whether the search controller manages the visibility of its results controller.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisearchcontroller/3153160-automaticallyshowssearchresultsc) for more info.
  @inlinable
  @discardableResult
  func automaticallyShowsSearchResultsController(_ bool: Bool) -> Self {
    base.automaticallyShowsSearchResultsController = bool
    return self
  }
  
  /// PropertySetter wrapper for `.hidesNavigationBarDuringPresentation`
  /// - **Summary:**  A Boolean indicating whether to hide the navigation bar when searching.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisearchcontroller/1618650-hidesnavigationbarduringpresenta) for more info.
  @inlinable
  @discardableResult
  func hidesNavigationBarDuringPresentation(_ bool: Bool) -> Self {
    base.hidesNavigationBarDuringPresentation = bool
    return self
  }
  
  /// PropertySetter to access the `searchBar` `propertySetter` of the `searchController` directly
  ///
  /// - Example:
  /// ```swift
  ///  private func setupUI() {
  ///       searchController.set
  ///          .delegate(self)
  ///          .hidesNavigationBarDuringPresentation(true)
  ///        // Set searchBar properties
  ///          .searchBarProperties { set in
  ///             set
  ///              .text("Foo")
  ///              .placeholder("Name")
  ///          }
  ///        // Fall back to the searchController properties
  ///          .searchResultsUpdater(self)
  ///  }
  /// ```
  /// >Tip: You can always set searchBar properties using it's own PropertySetter directly: `searchController.searchBar.set`
  @inlinable
  @discardableResult
  func searchBarProperties(_ block: @escaping (PropertySetter<UISearchBar>) -> Void) -> Self {
    block(base.searchBar.set)
    return self
  }
  
}

// MARK: - iOS16 properties
@available(iOS 16, *)
public extension PropertySetter where Base: UISearchController {
  
  /// PropertySetter wrapper for `.ignoresSearchSuggestionsForSearchBarPlacementStacked`
  /// - **Summary:**  A Boolean value you use to specify whether the search controller prevents search suggestions from displaying for a stacked search bar.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisearchcontroller/4044392-ignoressearchsuggestionsforsearc) for more info.
  @inlinable
  @discardableResult
  func ignoresSearchSuggestionsForSearchBarPlacementStacked(_ bool: Bool) -> Self {
    base.ignoresSearchSuggestionsForSearchBarPlacementStacked = bool
    return self
  }
  
  /// PropertySetter wrapper for `.scopeBarActivation`
  /// - **Summary:**  A mode that determines when the search controller shows and hides the scope bar.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisearchcontroller/4057372-scopebaractivation) for more info.
  @inlinable
  @discardableResult
  func scopeBarActivation(_ activation: UISearchController.ScopeBarActivation) -> Self {
    base.scopeBarActivation = activation
    return self
  }
}
