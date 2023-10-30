//
//  UIVideoEditorController+PropertySetter.swift
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

// MARK: - UIVideoEditorController
public extension PropertySetter where Base: UIVideoEditorController {
  
  /// PropertySetter wrapper for `.delegate`
  /// - **Summary:** The video editor’s delegate object.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uivideoeditorcontroller/1622341-delegate) for more info.
  @inlinable
  @discardableResult
  func delegate(_ delegate: (UIVideoEditorControllerDelegate & UINavigationControllerDelegate)?) -> Self {
    base.delegate = delegate
    return self
  }
  
  /// PropertySetter wrapper for `.videoMaximumDuration`
  /// - **Summary:** The maximum duration, in seconds, permitted for trimmed movies saved by the video editor.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uivideoeditorcontroller/1622338-videomaximumduration) for more info.
  @inlinable
  @discardableResult
  func videoMaximumDuration(_ duration: TimeInterval) -> Self {
    base.videoMaximumDuration = duration
    return self
  }
  
  /// PropertySetter wrapper for `.videoQuality`
  /// - **Summary:**  The video quality to use when saving a trimmed movie.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uivideoeditorcontroller/1622339-videoquality) for more info.
  @inlinable
  @discardableResult
  func videoQuality(_ quality: UIImagePickerController.QualityType) -> Self {
    base.videoQuality = quality
    return self
  }
  
  /// PropertySetter wrapper for `.videoPath`
  /// - **Summary:**  The filesystem path to the movie to be loaded by the video editor.
  @inlinable
  @discardableResult
  func videoPath(_ path: String) -> Self {
    base.videoPath = path
    return self
  }
}
