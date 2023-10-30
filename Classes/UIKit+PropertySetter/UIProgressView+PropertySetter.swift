//
//  UIProgressView+PropertySetter.swift
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

// MARK: - UIProgressView
public extension PropertySetter where Base: UIProgressView {
  
  /// PropertySetter wrapper for `.progress`
  /// - **Summary:**  The current progress of the progress view.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiprogressview/1619844-progress) for more info.
  @discardableResult
  func progress(_ progress: Float) -> Self {
    base.progress = progress
    return self
  }
  
  /// PropertySetter wrapper for `.setProgress(_ progress: Float, animated: Bool)`
  /// - **Summary:**  Adjusts the current progress of the progress view, optionally animating the change.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiprogressview/1619846-setprogress) for more info.
  @discardableResult
  func progress(_ progress: Float, animated: Bool = true) -> Self {
    base.setProgress(progress, animated: animated)
    return self
  }
  
  /// PropertySetter wrapper for `.observedProgress`
  /// - **Summary:**  The progress object to use for updating the progress view.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiprogressview/1619840-observedprogress) for more info.
  @discardableResult
  func observedProgress(_ progress: Progress?) -> Self {
    base.observedProgress = progress
    return self
  }
  
  /// PropertySetter wrapper for `.progressImage`
  /// - **Summary:**  An image to use for the portion of the progress bar that’s filled.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiprogressview/1619837-progressimage) for more info.
  @discardableResult
  func progressImage(_ image: UIImage?) -> Self {
    base.progressImage = image
    return self
  }
  
  /// PropertySetter wrapper for `.progressTintColor`
  /// - **Summary:**  The color shown for the portion of the progress bar that’s filled.
  @discardableResult
  func progressTintColor(_ color: UIColor?) -> Self {
    base.progressTintColor = color
    return self
  }
  
  /// PropertySetter wrapper for `.progressViewStyle`
  /// - **Summary:**  The current graphical style of the progress view.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiprogressview/1619845-progressviewstyle) for more info.
  @discardableResult
  func progressViewStyle(_ style: UIProgressView.Style) -> Self {
    base.progressViewStyle = style
    return self
  }
  
  /// PropertySetter wrapper for `.trackImage`
  /// - **Summary:**  An image to use for the portion of the track that isn’t filled.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiprogressview/1619843-trackimage) for more info.
  @discardableResult
  func trackImage(_ image: UIImage?) -> Self {
    base.trackImage = image
    return self
  }
  
  /// PropertySetter wrapper for `.trackTintColor`
  /// - **Summary:**  The color shown for the portion of the progress bar that isn’t filled.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiprogressview/1619841-tracktintcolor) for more info.
  @discardableResult
  func trackTintColor(_ color: UIColor?) -> Self {
    base.trackTintColor = color
    return self
  }
  
}
