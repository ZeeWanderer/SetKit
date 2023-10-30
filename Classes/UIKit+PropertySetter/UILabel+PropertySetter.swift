//
//  UILabel+PropertySetter.swift
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

// MARK: - UILabel
public extension PropertySetter where Base: UILabel {
  
  /// PropertySetter wrapper for `.text`
  /// - **Summary:**  The text that the label displays.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uilabel/1620538-text) for more info.
  @inlinable
  @discardableResult
  func text(_ text: String?) -> Self {
    base.text = text
    return self
  }
  
  /// PropertySetter wrapper for `.attributedTitle`
  /// - **Summary:**  The styled text that the label displays.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uilabel/1620542-attributedtext) for more info.
  @inlinable
  @discardableResult
  func attributedTitle(_ text: NSAttributedString?) -> Self {
    base.attributedText = text
    return self
  }
  
  /// PropertySetter wrapper for `.font`
  /// - **Summary:**  The font of the text.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uilabel/1620532-font) for more info.
  @inlinable
  @discardableResult
  func font(_ font: UIFont) -> Self {
    base.font = font
    return self
  }
  
  /// PropertySetter wrapper for `fontSize`
  /// - Will use label's current font to adjust fontSize:
  /// ```swift
  /// base.font = base.font.withSize(size)
  /// ```
  @inlinable
  @discardableResult
  func fontSize(_ size: CGFloat) -> Self {
    base.font = base.font.withSize(size)
    return self
  }
  
  /// PropertySetter wrapper for `.numberOfLines = .zero`
  @inlinable
  @discardableResult
  func multiline() -> Self {
    base.numberOfLines = .zero
    return self
  }
  
  /// PropertySetter wrapper for `.numberOfLines`
  /// - **Summary:**  The maximum number of lines for rendering text.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uilabel/1620539-numberoflines) for more info.
  @inlinable
  @discardableResult
  func numberOfLines(_ int: Int) -> Self {
    base.numberOfLines = int
    return self
  }
  
  /// PropertySetter wrapper for `.textAlignment`
  /// - **Summary:**  The technique for aligning the text.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uilabel/1620541-textalignment) for more info.
  @inlinable
  @discardableResult
  func textAlignment(_ alignment: NSTextAlignment) -> Self {
    base.textAlignment = alignment
    return self
  }
  
  /// PropertySetter wrapper for `.lineBreakMode`
  /// - **Summary:**  The technique for wrapping and truncating the label’s text.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uilabel/1620525-linebreakmode) for more info.
  @inlinable
  @discardableResult
  func lineBreakMode(_ mode: NSLineBreakMode) -> Self {
    base.lineBreakMode = mode
    return self
  }
  
  /// PropertySetter wrapper for `.showsExpansionTextWhenTruncated`
  /// - **Summary:**  A Boolean value that determines whether the full text of the label displays when the pointer hovers over the truncated text.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uilabel/3750862-showsexpansiontextwhentruncated) for more info.
  @inlinable
  @discardableResult
  func showsExpansionTextWhenTruncated(_ bool: Bool) -> Self {
    base.showsExpansionTextWhenTruncated = bool
    return self
  }
  
  /// PropertySetter wrapper for `.minimumScaleFactor`
  /// - **Summary:**  The minimum scale factor for the label’s text.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uilabel/1620544-minimumscalefactor) for more info.
  @inlinable
  @discardableResult
  func minimumScaleFactor(_ factor: CGFloat) -> Self {
    base.minimumScaleFactor = factor
    return self
  }
  
  /// PropertySetter wrapper for `.preferredMaxLayoutWidth`
  /// - **Summary:**  The preferred maximum width, in points, for a multiline label.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uilabel/1620534-preferredmaxlayoutwidth) for more info.
  @inlinable
  @discardableResult
  func preferredMaxLayoutWidth(_ width: CGFloat) -> Self {
    base.preferredMaxLayoutWidth = width
    return self
  }
  
  /// PropertySetter wrapper for `.isEnabled`
  /// - **Summary:**  A Boolean value that determines whether the label draws its text in an enabled state.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uilabel/1620530-isenabled) for more info.
  @inlinable
  @discardableResult
  func enabled(_ bool: Bool) -> Self {
    base.isEnabled = bool
    return self
  }
  
  /// PropertySetter wrapper for `.isHighlighted`
  /// - **Summary:**  A Boolean value that determines whether the label draws its text with a highlight.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uilabel/1620526-ishighlighted) for more info.
  @inlinable
  @discardableResult
  func highlighted(_ bool: Bool) -> Self {
    base.isHighlighted = bool
    return self
  }
  
  /// PropertySetter wrapper for `.textColor`
  /// - **Summary:**  The color of the text.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uilabel/1620531-textcolor) for more info.
  @inlinable
  @discardableResult
  func textColor(_ color: UIColor) -> Self {
    base.textColor = color
    return self
  }
  
  /// PropertySetter wrapper for `.highlightedTextColor`
  /// - **Summary:**  The highlight color for the label’s text.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uilabel/1620540-highlightedtextcolor) for more info.
  @inlinable
  @discardableResult
  func highlightedTextColor(_ color: UIColor?) -> Self {
    base.highlightedTextColor = color
    return self
  }
  
  /// PropertySetter wrapper for `.adjustsFontForContentSizeCategory`
  /// - **Summary:**  A Boolean that indicates whether the object automatically updates its font when the device’s content size category changes.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uicontentsizecategoryadjusting/1771731-adjustsfontforcontentsizecategor) for more info.
  @inlinable
  @discardableResult
  func adjustsFontForContentSizeCategory(_ bool: Bool) -> Self {
    base.adjustsFontForContentSizeCategory = bool
    return self
  }
  
  /// PropertySetter wrapper for `.adjustsFontSizeToFitWidth`
  /// - **Summary:**  A Boolean value that determines whether the label reduces the text’s font size to fit the title string into the label’s bounding rectangle.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uilabel/1620546-adjustsfontsizetofitwidth) for more info.
  @inlinable
  @discardableResult
  func adjustsFontSizeToFitWidth(_ bool: Bool) -> Self {
    base.adjustsFontSizeToFitWidth = bool
    return self
  }
  
  /// PropertySetter wrapper for `.allowsDefaultTighteningForTruncation`
  /// - **Summary:**  A Boolean value that determines whether the label tightens text before truncating.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uilabel/1620533-allowsdefaulttighteningfortrunca) for more info.
  @inlinable
  @discardableResult
  func allowsDefaultTighteningForTruncation(_ bool: Bool) -> Self {
    base.allowsDefaultTighteningForTruncation = bool
    return self
  }
  
  /// PropertySetter wrapper for `.baselineAdjustment`
  /// - **Summary:**  An option that controls whether the text’s baseline remains fixed when text needs to shrink to fit in the label.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uilabel/1620524-baselineadjustment) for more info.
  @inlinable
  @discardableResult
  func baselineAdjustment(_ baselineAdjustment: UIBaselineAdjustment) -> Self {
    base.baselineAdjustment = baselineAdjustment
    return self
  }
}


// MARK: - iOS14 properties
@available(iOS 14.0, *)
public extension PropertySetter where Base: UILabel {
  
  /// PropertySetter wrapper for `.lineBreakStrategy`
  /// - **Summary:**  The strategy that the system uses to break lines when laying out multiple lines of text.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uilabel/3667730-linebreakstrategy) for more info.
  @available(iOS 14.0, *)
  @inlinable
  @discardableResult
  func lineBreakStrategy(_ lineBreakStrategy: NSParagraphStyle.LineBreakStrategy) -> Self {
    base.lineBreakStrategy = lineBreakStrategy
    return self
  }
  
}

// MARK: - iOS17 properties
@available(iOS 17.0, *)
public extension PropertySetter where Base: UILabel {
  
  /// PropertySetter wrapper for `.preferredVibrancy`
  @inlinable
  @discardableResult
  func preferredVibrancy(_ preferredVibrancy: UILabelVibrancy) -> Self {
    base.preferredVibrancy = preferredVibrancy
    return self
  }
  
  /// PropertySetter wrapper for `.sizingRule`
  @inlinable
  @discardableResult
  func sizingRule(_ sizingRule: UILetterformAwareSizingRule) -> Self {
    base.sizingRule = sizingRule
    return self
  }
  
}
