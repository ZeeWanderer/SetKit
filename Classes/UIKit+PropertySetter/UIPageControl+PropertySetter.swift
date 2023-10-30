//
//  UIPageControl+PropertySetter.swift
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

// MARK: - UISegmentedControl
public extension PropertySetter where Base: UIPageControl {
  
  /// PropertySetter wrapper for `.currentPage`
  /// - **Summary:**
  /// See [**documentation**]() for more info.
  @discardableResult
  func currentPage(_ page: Int) -> Self {
    base.currentPage = page
    return self
  }
  
  /// PropertySetter wrapper for `.numberOfPages`
  /// - **Summary:**
  /// See [**documentation**]() for more info.
  @discardableResult
  func numberOfPages(_ page: Int) -> Self {
    base.numberOfPages = page
    return self
  }
  
  /// PropertySetter wrapper for `.currentPageIndicatorTintColor`
  /// - **Summary:**
  /// See [**documentation**]() for more info.
  @discardableResult
  func currentPageIndicatorTintColor(_ color: UIColor) -> Self {
    base.currentPageIndicatorTintColor = color
    return self
  }
  
  /// PropertySetter wrapper for `.pageIndicatorTintColor`
  /// - **Summary:**
  /// See [**documentation**]() for more info.
  @discardableResult
  func pageIndicatorTintColor(_ color: UIColor) -> Self {
    base.pageIndicatorTintColor = color
    return self
  }
  
  /// PropertySetter wrapper for `.hidesForSinglePage`
  /// - **Summary:**
  /// See [**documentation**]() for more info.
  @discardableResult
  func hidesForSinglePage(_ bool: Bool) -> Self {
    base.hidesForSinglePage = bool
    return self
  }
  
}

// MARK: - iOS14 properties
@available(iOS 14, *)
public extension PropertySetter where Base: UIPageControl {
  
  /// PropertySetter wrapper for `.allowsContinuousInteraction`
  /// - **Summary:**
  /// See [**documentation**]() for more info.
  @discardableResult
  func allowsContinuousInteraction(_ bool: Bool) -> Self {
    base.allowsContinuousInteraction = bool
    return self
  }
  
  /// PropertySetter wrapper for `.backgroundStyle`
  /// - **Summary:**
  /// See [**documentation**]() for more info.
  @discardableResult
  func backgroundStyle(_ style: UIPageControl.BackgroundStyle) -> Self {
    base.backgroundStyle = style
    return self
  }
  
  /// PropertySetter wrapper for `.preferredIndicatorImage`
  /// - **Summary:**
  /// See [**documentation**]() for more info.
  @discardableResult
  func preferredIndicatorImage(_ image: UIImage?) -> Self {
    base.preferredIndicatorImage = image
    return self
  }
  
  /// PropertySetter wrapper for `.preferredIndicatorImage`
  /// - **Summary:**
  /// See [**documentation**]() for more info.
  @discardableResult
  func indicatorImage(_ image: UIImage?, forPage: Int) -> Self {
    base.setIndicatorImage(image, forPage: forPage)
    return self
  }
  
}

// MARK: - iOS16 properties
@available(iOS 16, *)
public extension PropertySetter where Base: UIPageControl {
  
  /// PropertySetter wrapper for `.preferredIndicatorImage`
  /// - **Summary:**
  /// See [**documentation**]() for more info.
  @discardableResult
  func preferredCurrentPageIndicatorImage(_ image: UIImage) -> Self {
    base.preferredCurrentPageIndicatorImage = image
    return self
  }
  
  /// PropertySetter wrapper for `.direction`
  /// - **Summary:**
  /// See [**documentation**]() for more info.
  @discardableResult
  func direction(_ direction: UIPageControl.Direction) -> Self {
    base.direction = direction
    return self
  }
  
  /// PropertySetter wrapper for `.preferredIndicatorImage`
  /// - **Summary:**
  /// See [**documentation**]() for more info.
  @discardableResult
  func currentPageIndicatorImage(_ image: UIImage?, forPage: Int) -> Self {
    base.setCurrentPageIndicatorImage(image, forPage: forPage)
    return self
  }
  
}

// MARK: - iOS17 properties
@available(iOS 17, *)
public extension PropertySetter where Base: UIPageControl {
  
  /// PropertySetter wrapper for `.progress`
  /// - **Summary:**
  /// See [**documentation**]() for more info.
  @discardableResult
  func progress(_ progress: UIPageControlProgress?) -> Self {
    base.progress = progress
    return self
  }
  
}
