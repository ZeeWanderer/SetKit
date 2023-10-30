//
//  UINavigationItem+PropertySetter.swift
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

// MARK: - UINavigationItem
public extension PropertySetter where Base: UINavigationItem {
  
  /// PropertySetter wrapper for `.title`
  /// - **Summary:**  The navigation item’s title that displays in the navigation bar.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationitem/1624965-title) for more info.
  @inlinable
  @discardableResult
  func title(_ title: String) -> Self {
    base.title = title
    return self
  }
  
  /// PropertySetter wrapper for `.titleView`
  /// - **Summary:**  A custom view that displays in the center of the navigation bar when the receiver is the top item.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationitem/1624935-titleview) for more info.
  @inlinable
  @discardableResult
  func titleView(_ view: UIView?) -> Self {
    base.titleView = view
    return self
  }
  
  /// PropertySetter wrapper for `.largeTitleDisplayMode`
  /// - **Summary:**  The mode for displaying the title of the navigation bar.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationitem/2909056-largetitledisplaymode) for more info.
  @inlinable
  @discardableResult
  func largeTitleDisplayMode(_ mode: UINavigationItem.LargeTitleDisplayMode) -> Self {
    base.largeTitleDisplayMode = mode
    return self
  }
  
  /// PropertySetter wrapper for `.rightBarButtonItem`
  /// - **Summary:**  A custom bar button item that displays on the right (or trailing) edge of the navigation bar when the navigation item is the top item.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationitem/1624957-rightbarbuttonitem) for more info.
  @inlinable
  @discardableResult
  func rightBarButtonItem(_ item: UIBarButtonItem?) -> Self {
    base.rightBarButtonItem = item
    return self
  }
  
  /// PropertySetter wrapper for `.leftBarButtonItem`
  /// - **Summary:**  A custom bar button item that displays on the left (or leading) edge of the navigation bar when the navigation item is the top item.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationitem/1624936-leftbarbuttonitem) for more info.
  @inlinable
  @discardableResult
  func leftBarButtonItem(_ item: UIBarButtonItem?) -> Self {
    base.leftBarButtonItem = item
    return self
  }
  
  /// PropertySetter wrapper for `.rightBarButtonItems`
  /// - **Summary:**  An array of custom bar button items to display on the right (or trailing) side of the navigation bar when the navigation item is the top item.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationitem/1624956-rightbarbuttonitems) for more info.
  @inlinable
  @discardableResult
  func rightBarButtonItems(_ items: [UIBarButtonItem]?) -> Self {
    base.rightBarButtonItems = items
    return self
  }
  
  /// PropertySetter wrapper for `.leftBarButtonItems`
  /// - **Summary:**  An array of custom bar button items to display on the left (or leading) side of the navigation bar when the navigation item is the top item.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationitem/1624946-leftbarbuttonitems) for more info.
  @inlinable
  @discardableResult
  func leftBarButtonItems(_ items: [UIBarButtonItem]?) -> Self {
    base.leftBarButtonItems = items
    return self
  }
  
  /// PropertySetter wrapper for `.backBarButtonItem`
  /// - **Summary:**  The bar button item for adding a Back button to the navigation bar.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationitem/1624958-backbarbuttonitem) for more info.
  @inlinable
  @discardableResult
  func backBarButtonItem(_ item: UIBarButtonItem?) -> Self {
    base.backBarButtonItem = item
    return self
  }
  
  /// PropertySetter wrapper for `.searchController`
  /// - **Summary:**  The search controller to integrate into your navigation interface.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationitem/2897305-searchcontroller) for more info.
  @inlinable
  @discardableResult
  func searchController(_ controller: UISearchController?) -> Self {
    base.searchController = controller
    return self
  }
  
  /// PropertySetter wrapper for `.hidesSearchBarWhenScrolling`
  /// - **Summary:**  A Boolean value that indicates whether the app hides the integrated search bar when scrolling any underlying content.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationitem/2897296-hidessearchbarwhenscrolling) for more info.
  @inlinable
  @discardableResult
  func hidesSearchBarWhenScrolling(_ bool: Bool) -> Self {
    base.hidesSearchBarWhenScrolling = bool
    return self
  }
  
  /// PropertySetter wrapper for `.prompt`
  /// - **Summary:**  A single line of text that displays at the top of the navigation bar.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationitem/1624930-prompt) for more info.
  @inlinable
  @discardableResult
  func prompt(_ string: String?) -> Self {
    base.prompt = string
    return self
  }
  
  /// PropertySetter wrapper for `.backButtonTitle`
  /// - **Summary:**  The custom title of the Back button.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationitem/3600576-backbuttontitle) for more info.
  @inlinable
  @discardableResult
  func backButtonTitle(_ string: String?) -> Self {
    base.backButtonTitle = string
    return self
  }
  
  /// PropertySetter wrapper for `.leftItemsSupplementBackButton`
  /// - **Summary:**  A Boolean value that indicates whether the left items display in addition to the Back button.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationitem/1624933-leftitemssupplementbackbutton) for more info.
  @inlinable
  @discardableResult
  func leftItemsSupplementBackButton(_ bool: Bool) -> Self {
    base.leftItemsSupplementBackButton = bool
    return self
  }
  
  /// PropertySetter wrapper for `.setRightBarButton`
  /// - **Summary:**  Sets the custom bar button item, optionally animating the transition to the view.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationitem/1624929-setrightbarbutton) for more info.
  @inlinable
  @discardableResult
  func backBarButtonItem(_ item: UIBarButtonItem?, animated: Bool = true) -> Self {
    base.setRightBarButton(item, animated: animated)
    return self
  }
  
  /// PropertySetter wrapper for `.setLeftBarButton`
  /// - **Summary:**  Sets the custom bar button item, optionally animating the transition to the new item.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationitem/1624954-setleftbarbutton) for more info.
  @inlinable
  @discardableResult
  func leftBarButton(_ item: UIBarButtonItem?, animated: Bool = true) -> Self {
    base.setLeftBarButton(item, animated: animated)
    return self
  }
  
  /// PropertySetter wrapper for `.setLeftBarButtonItems`
  /// - **Summary:**  Sets the left bar button items, optionally animating the transition to the new items.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationitem/1624949-setleftbarbuttonitems) for more info.
  @inlinable
  @discardableResult
  func leftBarButtonItems(_ items: [UIBarButtonItem]?, animated: Bool = true) -> Self {
    base.setLeftBarButtonItems(items, animated: animated)
    return self
  }
  
  /// PropertySetter wrapper for `.setRightBarButton`
  /// - **Summary:**  Sets the custom bar button item, optionally animating the transition to the view.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationitem/1624929-setrightbarbutton) for more info.
  @inlinable
  @discardableResult
  func rightBarButton(_ item: UIBarButtonItem?, animated: Bool = true) -> Self {
    base.setRightBarButton(item, animated: animated)
    return self
  }
  
  /// PropertySetter wrapper for `.setRightBarButtonItems`
  /// - **Summary:**  Sets the right bar button items, optionally animating the transition to the new items.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationitem/1624939-setrightbarbuttonitems) for more info.
  @inlinable
  @discardableResult
  func rightBarButtonItems(_ items: [UIBarButtonItem]?, animated: Bool = true) -> Self {
    base.setRightBarButtonItems(items, animated: animated)
    return self
  }
  
  /// PropertySetter wrapper for `.setHidesBackButton`
  /// - **Summary:**
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationitem/1624934-sethidesbackbutton) for more info.
  @inlinable
  @discardableResult
  func hidesBackButton(_ bool: Bool, animated: Bool = true) -> Self {
    base.setHidesBackButton(bool, animated: animated)
    return self
  }
  
  /// PropertySetter wrapper for `.hidesBackButton`
  /// - **Summary:**  A Boolean value that determines whether the navigation item hides the Back button.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationitem/1624947-hidesbackbutton) for more info.
  @inlinable
  @discardableResult
  func hidesBackButton(_ bool: Bool) -> Self {
    base.hidesBackButton = bool
    return self
  }
  
  /// PropertySetter wrapper for `.standardAppearance`
  /// - **Summary:**  The appearance settings for a standard-height navigation bar.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationitem/3198042-standardappearance) for more info.
  @inlinable
  @discardableResult
  func standardAppearance(_ appearance: UINavigationBarAppearance?) -> Self {
    base.standardAppearance = appearance
    return self
  }
  
  /// PropertySetter wrapper for `.compactAppearance`
  /// - **Summary:**  The appearance settings for a compact-height navigation bar.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationitem/3198040-compactappearance) for more info.
  @inlinable
  @discardableResult
  func compactAppearance(_ appearance: UINavigationBarAppearance?) -> Self {
    base.compactAppearance = appearance
    return self
  }
  
  /// PropertySetter wrapper for `.scrollEdgeAppearance`
  /// - **Summary:**  The appearance settings for a standard-height navigation bar when the edge of scrollable content aligns with the edge of the navigation bar.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationitem/3198041-scrolledgeappearance) for more info.
  @inlinable
  @discardableResult
  func scrollEdgeAppearance(_ appearance: UINavigationBarAppearance?) -> Self {
    base.scrollEdgeAppearance = appearance
    return self
  }
  
}

// MARK: - iOS14 properties
@available(iOS 14.0, *)
public extension PropertySetter where Base: UINavigationItem {
  
  /// PropertySetter wrapper for `.backButtonDisplayMode`
  /// - **Summary:**  The display mode of the Back button.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationitem/3656350-backbuttondisplaymode) for more info.
  @inlinable
  @discardableResult
  func backButtonDisplayMode(_ mode: UINavigationItem.BackButtonDisplayMode) -> Self {
    base.backButtonDisplayMode = mode
    return self
  }
  
}

// MARK: - iOS15 properties
@available(iOS 15.0, *)
public extension PropertySetter where Base: UINavigationItem {
  
  /// PropertySetter wrapper for `.compactScrollEdgeAppearance`
  /// - **Summary:**  The appearance settings for a compact-height navigation bar when the edge of scrollable content aligns with the edge of the navigation bar.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationitem/3750866-compactscrolledgeappearance) for more info.
  @inlinable
  @discardableResult
  func compactScrollEdgeAppearance(_ appearance: UINavigationBarAppearance?) -> Self {
    base.compactScrollEdgeAppearance = appearance
    return self
  }
  
}

// MARK: - iOS16 properties
@available(iOS 16.0, *)
public extension PropertySetter where Base: UINavigationItem {
  
  /// PropertySetter wrapper for `.additionalOverflowItems`
  /// - **Summary:**  Additional items to present in the overflow menu.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationitem/3987965-additionaloverflowitems) for more info.
  @inlinable
  @discardableResult
  func additionalOverflowItems(_ items: UIDeferredMenuElement?) -> Self {
    base.additionalOverflowItems = items
    return self
  }
  
  /// PropertySetter wrapper for `.centerItemGroups`
  /// - **Summary:**  Customizable item groups to display in the center section of the navigation bar.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationitem/3987967-centeritemgroups) for more info.
  @inlinable
  @discardableResult
  func centerItemGroups(_ groups: [UIBarButtonItemGroup]) -> Self {
    base.centerItemGroups = groups
    return self
  }
  
  /// PropertySetter wrapper for `.leadingItemGroups`
  /// - **Summary:**  Item groups to display in the leading section of the navigation bar.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationitem/4013053-leadingitemgroups) for more info.
  @inlinable
  @discardableResult
  func leadingItemGroups(_ groups: [UIBarButtonItemGroup]) -> Self {
    base.leadingItemGroups = groups
    return self
  }
  
  /// PropertySetter wrapper for `.trailingItemGroups`
  /// - **Summary:**  Item groups to display in the trailing section of the navigation bar.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationitem/4013054-trailingitemgroups) for more info.
  @inlinable
  @discardableResult
  func trailingItemGroups(_ groups: [UIBarButtonItemGroup]) -> Self {
    base.trailingItemGroups = groups
    return self
  }
  
  /// PropertySetter wrapper for `.backAction`
  /// - **Summary:**  The back action for the navigation bar.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationitem/3987966-backaction) for more info.
  @inlinable
  @discardableResult
  func backAction(_ action: UIAction?) -> Self {
    base.backAction = action
    return self
  }
  
  /// PropertySetter wrapper for `.customizationIdentifier`
  /// - **Summary:**  A globally unique string that enables user customization of the navigation bar layout.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationitem/3987968-customizationidentifier) for more info.
  @inlinable
  @discardableResult
  func customizationIdentifier(_ string: String?) -> Self {
    base.customizationIdentifier = string
    return self
  }
  
  /// PropertySetter wrapper for `.documentProperties`
  /// - **Summary:**  An object that provides the document header for the title menu.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationitem/3967521-documentproperties) for more info.
  @inlinable
  @discardableResult
  func documentProperties(_ documents: UIDocumentProperties?) -> Self {
    base.documentProperties = documents
    return self
  }
  
  /// PropertySetter wrapper for `.style`
  /// - **Summary:**  A style that determines how the content of the navigation item lays out in the navigation bar.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationitem/3987969-style) for more info.
  @inlinable
  @discardableResult
  func style(_ style: UINavigationItem.ItemStyle) -> Self {
    base.style = style
    return self
  }
  
  /// PropertySetter wrapper for `.titleMenuProvider`
  /// - **Summary:**  A closure that generates the navigation item’s title menu.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationitem/3967523-titlemenuprovider) for more info.
  @inlinable
  @discardableResult
  func titleMenuProvider(_ provider: (([UIMenuElement]) -> UIMenu?)?) -> Self {
    base.titleMenuProvider = provider
    return self
  }
  
  /// PropertySetter wrapper for `.preferredSearchBarPlacement`
  /// - **Summary:**  The preferred placement of the search bar in the navigation bar.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationitem/3975870-preferredsearchbarplacement) for more info.
  @inlinable
  @discardableResult
  func preferredSearchBarPlacement(_ placement: UINavigationItem.SearchBarPlacement) -> Self {
    base.preferredSearchBarPlacement = placement
    return self
  }
  
  /// PropertySetter wrapper for `.pinnedTrailingGroup`
  /// - **Summary:**  The item group to display on the trailing edge of the navigation bar, on the trailing side of the overflow and search items.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationitem/4063572-pinnedtrailinggroup) for more info.
  @inlinable
  @discardableResult
  func pinnedTrailingGroup(_ group: UIBarButtonItemGroup?) -> Self {
    base.pinnedTrailingGroup = group
    return self
  }
  
  /// PropertySetter wrapper for `.renameDelegate`
  /// - **Summary:**  The delegate for renaming the navigation item.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uinavigationitem/3967522-renamedelegate) for more info.
  @inlinable
  @discardableResult
  func renameDelegate(_ delegate: UINavigationItemRenameDelegate?) -> Self {
    base.renameDelegate = delegate
    return self
  }
  
}
