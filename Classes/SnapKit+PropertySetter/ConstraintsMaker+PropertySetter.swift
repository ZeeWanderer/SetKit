//
//  ConstraintsMaker+PropertySetter.swift
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

#if canImport(SnapKit)
import UIKit
import SnapKit
#if canImport(SetKitBase)
import SetKitBase
#endif

public extension PropertySetter where Base: UIView {
  
  /// PropertySetter wrapper for `.snp.makeConstraints()`
  ///
  /// This property wrapper simplifies the process of creating layout constraints using SnapKit, providing a concise and declarative way to define and manage constraints.
  ///
  /// - Example: 
  /// ```swift
  /// titleLabel.set
  ///   .subview(of: view)
  ///     // make constraints
  ///   .constraints { make in
  ///      make.center.equalToSuperview()
  ///      make.width.equalTo(view.snp.width).multipliedBy(0.7)
  ///    }
  ///     // fall back to the label's properties  
  ///   .opaque(false)
  ///   .text("Foo")
  ///   .textColor(.white)
  ///   .font(.systemFont(ofSize: 10))
  ///    .multiline()
  /// ```
  @inlinable
  @discardableResult
  func constraints(_ closure: (ConstraintMaker) -> Void) -> Self {
      base.snp.makeConstraints(closure)
      return self
  }
}
#endif

