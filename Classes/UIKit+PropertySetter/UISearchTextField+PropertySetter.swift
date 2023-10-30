//
//  UISearchTextField+PropertySetter.swift
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

// MARK: - UISearchTextField
public extension PropertySetter where Base: UISearchTextField {
  
  /// PropertySetter wrapper for `.tokens`
  /// - **Summary:**  The collection of tokens in the search text field.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisearchtextfield/3175443-tokens) for more info.
  @inlinable
  @discardableResult
  func tokens(_ tokens: [UISearchToken]) -> Self {
    base.tokens = tokens
    return self
  }
  
  /// PropertySetter wrapper for `.tokenBackgroundColor`
  /// - **Summary:**  The background color for all tokens in the search text field.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisearchtextfield/3175442-tokenbackgroundcolor) for more info.
  @inlinable
  @discardableResult
  func tokenBackgroundColor(_ color: UIColor) -> Self {
    base.tokenBackgroundColor = color
    return self
  }
  
  /// PropertySetter wrapper for `.allowsDeletingTokens`
  /// - **Summary:**  A Boolean that indicates whether the user can remove tokens from the search field.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisearchtextfield/3175436-allowsdeletingtokens) for more info.
  @inlinable
  @discardableResult
  func allowsDeletingTokens(_ bool: Bool) -> Self {
    base.allowsDeletingTokens = bool
    return self
  }
  
  /// PropertySetter wrapper for `.allowsCopyingTokens`
  /// - **Summary:**  A Boolean that indicates whether the user can copy or drag tokens from the search field.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisearchtextfield/3175435-allowscopyingtokens) for more info.
  @inlinable
  @discardableResult
  func allowsCopyingTokens(_ bool: Bool) -> Self {
    base.allowsCopyingTokens = bool
    return self
  }
  
}

// MARK: - iOS16 properties
@available(iOS 16.0, *)
public extension PropertySetter where Base: UISearchTextField {
  
  /// PropertySetter wrapper for `.searchSuggestions`
  /// - **Summary:**   A list of suggestions to offer as shortcuts below the search field.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisearchtextfield/3979296-searchsuggestions) for more info.
  @inlinable
  @discardableResult
  func searchSuggestions(_ suggestions: [UISearchSuggestion]?) -> Self {
    base.searchSuggestions = suggestions
    return self
  }
}
