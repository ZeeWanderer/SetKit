//
//  UIPickerView+PropertySetter.swift
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

// MARK: - UIPickerView
public extension PropertySetter where Base: UIPickerView {
  
  /// PropertySetter wrapper for `.delegate`
  /// - **Summary:**  The delegate for the picker view.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uipickerview/1614379-delegate) for more info.
  @inlinable
  @discardableResult
  func delegate(_ delegate: UIPickerViewDelegate?) -> Self {
    base.delegate = delegate
    return self
  }
  
  /// PropertySetter wrapper for `.dataSource`
  /// - **Summary:**  The data source for the picker view.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uipickerview/1614370-datasource) for more info.
  @inlinable
  @discardableResult
  func dataSource(_ dataSource: UIPickerViewDataSource?) -> Self {
    base.dataSource = dataSource
    return self
  }
  
  /// PropertySetter wrapper for `.selectRow(_ row: Int, inComponent: Int, animated: Bool)`
  /// - **Summary:**  Selects a row in a specified component of the picker view.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uipickerview/1614382-selectrow) for more info.
  @inlinable
  @discardableResult
  func rowSelected(_ row: Int, inComponent component: Int, animated: Bool = true) -> Self {
    base.selectRow(row, inComponent: component, animated: animated)
    return self
  }
}
