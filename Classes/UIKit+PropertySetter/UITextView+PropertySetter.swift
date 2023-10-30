//
//  UITextView+PropertySetter.swift
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

// MARK: - UITextView
public extension PropertySetter where Base: UITextView {
  
  /// PropertySetter wrapper for `.text`
  /// - **Summary:**  The text that the text view displays.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextview/1618623-text) for more info.
  @inlinable
  @discardableResult
  func text(_ string: String?) -> Self {
    base.text = string
    return self
  }
  
  /// PropertySetter wrapper for `.selectedRange`
  /// - **Summary:**  The current selection range of the text view.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextview/1618615-selectedrange) for more info.
  @inlinable
  @discardableResult
  func selectedRange(_ range: NSRange) -> Self {
    base.selectedRange = range
    
    return self
  }
  
  /// PropertySetter wrapper for `.isEditable`
  /// - **Summary:**  A Boolean value that indicates whether the text view is editable.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextview/1618616-iseditable) for more info.
  @inlinable
  @discardableResult
  func editable(_ bool: Bool) -> Self {
    base.isEditable = bool
    return self
  }
  
  /// PropertySetter wrapper for `.textContainerInset`
  /// - **Summary:**  The inset of the text container's layout area within the text view's content area.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextview/1618619-textcontainerinset) for more info.
  @inlinable
  @discardableResult
  func textContainerInset(_ intests: UIEdgeInsets) -> Self {
    base.textContainerInset = intests
    return self
  }
  
  /// PropertySetter wrapper for `.dataDetectorTypes`
  /// - **Summary:**  The types of data that convert to tappable URLs in the text view.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextview/1618607-datadetectortypes) for more info.
  @inlinable
  @discardableResult
  func dataDetectorTypes(_ types: UIDataDetectorTypes) -> Self {
    base.dataDetectorTypes = types
    return self
  }
  
  /// PropertySetter wrapper for `.enablesReturnKeyAutomatically`
  /// - **Summary:**  A Boolean value that indicates whether the system automatically enables the Return key when the user enters text.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinputtraits/1624432-enablesreturnkeyautomatically) for more info.
  @inlinable
  @discardableResult
  func enablesReturnKeyAutomatically(_ bool: Bool) -> Self {
    base.enablesReturnKeyAutomatically = bool
    return self
  }
  
  /// PropertySetter wrapper for `.font`
  /// - **Summary:**  The font of the text.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextview/1618600-font) for more info.
  @inlinable
  @discardableResult
  func font(_ font: UIFont?) -> Self {
    base.font = font
    return self
  }
  
  /// PropertySetter wrapper for `.textColor`
  /// - **Summary:**  The color of the text.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextview/1618601-textcolor) for more info.
  @inlinable
  @discardableResult
  func textColor(_ color: UIColor?) -> Self {
    base.textColor = color
    return self
  }
  
  /// PropertySetter wrapper for `.delegate`
  /// - **Summary:**  The text view’s delegate.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextview/1618631-delegate) for more info.
  @inlinable
  @discardableResult
  func delegate(_ delegate: UITextViewDelegate?) -> Self {
    base.delegate = delegate
    return self
  }
  
  /// PropertySetter wrapper for `.keyboardType`
  /// - **Summary:**  The keyboard type for the text object.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinputtraits/1624457-keyboardtype) for more info.
  @inlinable
  @discardableResult
  func keyboardType(_ type: UIKeyboardType) -> Self {
    base.keyboardType = type
    return self
  }
  
  /// PropertySetter wrapper for `.attributedText`
  /// - **Summary:**  The styled text that the text view displays.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextview/1618626-attributedtext) for more info.
  @inlinable
  @discardableResult
  func attributedText(_ attributedString: NSAttributedString?) -> Self {
    base.attributedText = attributedString
    return self
  }
  
  /// PropertySetter wrapper for `.autocapitalizationType`
  /// - **Summary:** The autocapitalization style for the text object.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinputtraits/1624447-autocapitalizationtype) for more info.
  @inlinable
  @discardableResult
  func autocapitalizationType(_ type: UITextAutocapitalizationType) -> Self {
    base.autocapitalizationType = type
    return self
  }
  
  /// PropertySetter wrapper for `.autocorrectionType`
  /// - **Summary:**  The autocorrection style for the text object.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinputtraits/1624453-autocorrectiontype) for more info.
  @inlinable
  @discardableResult
  func autocorrectionType(_ type: UITextAutocorrectionType) -> Self {
    base.autocorrectionType = type
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
  
  /// PropertySetter wrapper for `.allowsEditingTextAttributes`
  /// - **Summary:**  A Boolean value that indicates whether the text view allows the user to edit style information.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextview/1618622-allowseditingtextattributes) for more info.
  @inlinable
  @discardableResult
  func allowsEditingTextAttributes(_ bool: Bool) -> Self {
    base.allowsEditingTextAttributes = bool
    return self
  }
  
  /// PropertySetter wrapper for `.clearsOnInsertion`
  /// - **Summary:**  A Boolean value that indicates whether inserting text replaces the previous contents.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextview/1618605-clearsoninsertion) for more info.
  @inlinable
  @discardableResult
  func clearsOnInsertion(_ bool: Bool) -> Self {
    base.clearsOnInsertion = bool
    return self
  }
  
  /// PropertySetter wrapper for `.inputAccessoryView`
  /// - **Summary:**  The custom accessory view to display when the text view becomes the first responder.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextview/1618596-inputaccessoryview) for more info.
  @inlinable
  @discardableResult
  func inputAccessoryView(_ view: UIView?) -> Self {
    base.inputAccessoryView = view
    return self
  }
  
  /// PropertySetter wrapper for `.inputDelegate`
  /// - **Summary:**  An input delegate that receives a notification when text changes or when the selection changes.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinput/1614508-inputdelegate) for more info.
  @inlinable
  @discardableResult
  func inputDelegate(_ delegate: UITextInputDelegate?) -> Self {
    base.inputDelegate = delegate
    return self
  }
  
  /// PropertySetter wrapper for `.inputView`
  /// - **Summary:**  The custom input view to display when the text view becomes the first responder.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextview/1618614-inputview) for more info.
  @inlinable
  @discardableResult
  func inputView(_ view: UIView?) -> Self {
    base.inputView = view
    return self
  }
  
  /// PropertySetter wrapper for `.isSecureTextEntry`
  /// - **Summary:**  A Boolean value that indicates whether a text object disables copying, and in some cases, prevents recording/broadcasting and also hides the text.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinputtraits/1624427-issecuretextentry) for more info.
  @inlinable
  @discardableResult
  func secureTextEntry(_ bool: Bool) -> Self {
    base.isSecureTextEntry = bool
    return self
  }
  
  /// PropertySetter wrapper for `.keyboardAppearance`
  /// - **Summary:**  The appearance style of the keyboard for the text object.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinputtraits/1624434-keyboardappearance) for more info.
  @inlinable
  @discardableResult
  func keyboardAppearance(_ appearance: UIKeyboardAppearance) -> Self {
    base.keyboardAppearance = appearance
    return self
  }
  
  /// PropertySetter wrapper for `.markedTextStyle`
  /// - **Summary:**   A dictionary of attributes that describes how to draw marked text.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinput/1614500-markedtextstyle) for more info.
  @inlinable
  @discardableResult
  func markedTextStyle(_ style: [NSAttributedString.Key : Any]) -> Self {
    base.markedTextStyle = style
    return self
  }
  
  /// PropertySetter wrapper for `.passwordRules`
  /// - **Summary:**  Requirements for passwords for your service to ensure iOS can generate compatible passwords for users.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinputtraits/2980934-passwordrules) for more info.
  @inlinable
  @discardableResult
  func passwordRules(_ rules: UITextInputPasswordRules?) -> Self {
    base.passwordRules = rules
    return self
  }
  
  /// PropertySetter wrapper for `.pasteDelegate`
  /// - **Summary:**  The text paste delegate that handles pasting and dropping of text, using item providers.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextpasteconfigurationsupporting/2887494-pastedelegate) for more info.
  @inlinable
  @discardableResult
  func pasteDelegate(_ delegate: UITextPasteDelegate?) -> Self {
    base.pasteDelegate = delegate
    return self
  }
  
  /// PropertySetter wrapper for `.returnKeyType`
  /// - **Summary:**  The visible title of the Return key.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinputtraits/1624446-returnkeytype) for more info.
  @inlinable
  @discardableResult
  func returnKeyType(_ type: UIReturnKeyType) -> Self {
    base.returnKeyType = type
    return self
  }
  
  /// PropertySetter wrapper for `.selectedTextRange`
  /// - **Summary:**  The range of selected text in a document.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinput/1614541-selectedtextrange) for more info.
  @inlinable
  @discardableResult
  func selectedTextRange(_ range: UITextRange?) -> Self {
    base.selectedTextRange = range
    return self
  }
  
  /// PropertySetter wrapper for `.selectionAffinity`
  /// - **Summary:**  The desired location for the insertion point.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinput/1614539-selectionaffinity) for more info.
  @inlinable
  @discardableResult
  func selectionAffinity(_ affinity: UITextStorageDirection) -> Self {
    base.selectionAffinity = affinity
    return self
  }
  
  /// PropertySetter wrapper for `.smartDashesType`
  /// - **Summary:**  The configuration state for smart dashes.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinputtraits/2866013-smartdashestype) for more info.
  @inlinable
  @discardableResult
  func smartDashesType(_ type: UITextSmartDashesType) -> Self {
    base.smartDashesType = type
    return self
  }
  
  /// PropertySetter wrapper for `.smartInsertDeleteType`
  /// - **Summary:**  The configuration state for the smart insertion and deletion of space characters.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinputtraits/2865828-smartinsertdeletetype) for more info.
  @inlinable
  @discardableResult
  func smartInsertDeleteType(_ type: UITextSmartInsertDeleteType) -> Self {
    base.smartInsertDeleteType = type
    return self
  }
  
  /// PropertySetter wrapper for `.smartQuotesType`
  /// - **Summary:**  The configuration state for smart quotes.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinputtraits/2865931-smartquotestype) for more info.
  @inlinable
  @discardableResult
  func smartQuotesType(_ type: UITextSmartQuotesType) -> Self {
    base.smartQuotesType = type
    return self
  }
  
  /// PropertySetter wrapper for `.textAlignment`
  /// - **Summary:**  The technique for aligning the text.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextview/1618618-textalignment) for more info.
  @inlinable
  @discardableResult
  func textAlignment(_ alignment: NSTextAlignment) -> Self {
    base.textAlignment = alignment
    return self
  }
  
  /// PropertySetter wrapper for `.textContentType`
  /// - **Summary:**  The semantic meaning for a text input area.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinputtraits/1649656-textcontenttype) for more info.
  @inlinable
  @discardableResult
  func textContentType(_ type: UITextContentType) -> Self {
    base.textContentType = type
    return self
  }
  
  /// PropertySetter wrapper for `.spellCheckingType`
  /// - **Summary:**  The spell-checking style for the text object.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinputtraits/1624461-spellcheckingtype) for more info.
  @inlinable
  @discardableResult
  func spellCheckingType(_ type: UITextSpellCheckingType) -> Self {
    base.spellCheckingType = type
    return self
  }
  
  /// PropertySetter wrapper for `.textDragDelegate`
  /// - **Summary:**  A text drag delegate object for customizing the drag source behavior of a text view.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextdraggable/2890903-textdragdelegate) for more info.
  @inlinable
  @discardableResult
  func textDragDelegate(_ delegate: UITextDragDelegate?) -> Self {
    base.textDragDelegate = delegate
    return self
  }
  
  /// PropertySetter wrapper for `.textDropDelegate`
  /// - **Summary:**  The text drop delegate for interacting with a drop activity in the text view.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextdroppable/2890860-textdropdelegate) for more info.
  @inlinable
  @discardableResult
  func textDropDelegate(_ delegate: UITextDropDelegate?) -> Self {
    base.textDropDelegate = delegate
    return self
  }
  
  /// PropertySetter wrapper for `.textDragOptions`
  /// - **Summary:**  The options for the text drag operation.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextdraggable/2897255-textdragoptions) for more info.
  @inlinable
  @discardableResult
  func textDragOptions(_ options: UITextDragOptions) -> Self {
    base.textDragOptions = options
    return self
  }
  
  /// PropertySetter wrapper for `.typingAttributes`
  /// - **Summary:**  The attributes to apply to new text that the user enters.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextview/1618629-typingattributes) for more info.
  @inlinable
  @discardableResult
  func typingAttributes(_ attributes: [NSAttributedString.Key : Any]) -> Self {
    base.typingAttributes = attributes
    return self
  }
  
  /// PropertySetter wrapper for `.becomeFirstResponder()` and `.resignFirstResponder()` depending on a parameter value
  @inlinable
  @discardableResult
  func firstResponder(_ bool: Bool) -> Self {
    if bool {
      base.becomeFirstResponder()
    } else {
      base.resignFirstResponder()
    }
    return self
  }
  
  /// PropertySetter wrapper for `.setBaseWritingDirection(_:, for:)`
  /// - **Summary:**  Sets the base writing direction for a specified range of text in a document.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinput/1614563-setbasewritingdirection) for more info.
  @inlinable
  @discardableResult
  func baseWritingDirection(_ direction: NSWritingDirection, for range: UITextRange) -> Self {
    base.setBaseWritingDirection(direction, for: range)
    return self
  }
  
  /// PropertySetter wrapper for `.setMarkedText(_:, selectedRange:)`
  /// - **Summary:**  Inserts the provided text and marks it to indicate that it is part of an active input session.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinput/1614465-setmarkedtext) for more info.
  @inlinable
  @discardableResult
  func markedText(_ text: String?, selectedRange: NSRange) -> Self {
    base.setMarkedText(text, selectedRange: selectedRange)
    return self
  }
  
  /// PropertySetter wrapper for `.attributedMarkedText(_:, selectedRange:)`
  /// - **Summary:**  Inserts the provided styled text and marks it to indicate that it is part of an active input session.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinput/3213955-setattributedmarkedtext) for more info.
  @inlinable
  @discardableResult
  func attributedMarkedText(_ text: NSAttributedString?, selectedRange: NSRange) -> Self {
    base.setAttributedMarkedText(text, selectedRange: selectedRange)
    return self
  }
}

// MARK: - iOS17 properties
@available(iOS 17.0, *)
public extension PropertySetter where Base: UITextView {
  /// PropertySetter wrapper for `.borderStyle`
  @inlinable
  @discardableResult
  func borderStyle(_ style: UITextView.BorderStyle) -> Self {
    base.borderStyle = style
    return self
  }
}
