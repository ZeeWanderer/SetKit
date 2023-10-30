//
//  UITextField+PropertySetter.swift
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

// MARK: - UITextField
public extension PropertySetter where Base: UITextField {
  
  /// PropertySetter wrapper for `.text`
  /// - **Summary:**  The text that the text field displays.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextfield/1619635-text) for more info.
  @discardableResult
  func text(_ string: String?) -> Self {
    base.text = string
    return self
  }
  
  /// PropertySetter wrapper for `.font`
  /// - **Summary:**  The font of the text.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextfield/1619604-font) for more info.
  @discardableResult
  func font(_ font: UIFont?) -> Self {
    base.font = font
    return self
  }
  
  /// PropertySetter wrapper for `.placeholder`
  /// - **Summary:**  The string that displays when there is no other text in the text field.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextfield/1619621-placeholder) for more info.
  @discardableResult
  func placeholder(_ string: String?) -> Self {
    base.placeholder = string
    return self
  }
  
  /// PropertySetter wrapper for `.textColor`
  /// - **Summary:**  The color of the text.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextfield/1619617-textcolor) for more info.
  @discardableResult
  func textColor(_ color: UIColor?) -> Self {
    base.textColor = color
    return self
  }
  
  /// PropertySetter wrapper for `.delegate`
  /// - **Summary:**  The text field’s delegate.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextfield/1619595-delegate) for more info.
  @discardableResult
  func delegate(_ delegate: UITextFieldDelegate?) -> Self {
    base.delegate = delegate
    return self
  }
  
  /// PropertySetter wrapper for `.borderStyle`
  /// - **Summary:**  The border style for the text field.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextfield/1619624-borderstyle) for more info.
  @discardableResult
  func borderStyle(_ style: UITextField.BorderStyle) -> Self {
    base.borderStyle = style
    return self
  }
  
  /// PropertySetter wrapper for `.keyboardType`
  /// - **Summary:**  The keyboard type for the text object.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinputtraits/1624457-keyboardtype) for more info.
  @discardableResult
  func keyboardType(_ type: UIKeyboardType) -> Self {
    base.keyboardType = type
    return self
  }
  
  /// PropertySetter wrapper for `.attributedText`
  /// - **Summary:**  The styled text that the text field displays.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextfield/1619602-attributedtext) for more info.
  @discardableResult
  func attributedText(_ attributedString: NSAttributedString?) -> Self {
    base.attributedText = attributedString
    return self
  }
  
  /// PropertySetter wrapper for `.attributedPlaceholder`
  /// - **Summary:**  The styled string that displays when there is no other text in the text field.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextfield/1619610-attributedplaceholder) for more info.
  @discardableResult
  func attributedPlaceholder(_ attributedString: NSAttributedString?) -> Self {
    base.attributedPlaceholder = attributedString
    return self
  }
  
  /// PropertySetter wrapper for `.autocapitalizationType`
  /// - **Summary:**  The autocapitalization style for the text object.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinputtraits/1624447-autocapitalizationtype) for more info.
  @discardableResult
  func autocapitalizationType(_ type: UITextAutocapitalizationType) -> Self {
    base.autocapitalizationType = type
    return self
  }
  
  /// PropertySetter wrapper for `.autocorrectionType`
  /// - **Summary:**  The autocorrection style for the text object.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinputtraits/1624453-autocorrectiontype) for more info.
  @discardableResult
  func autocorrectionType(_ type: UITextAutocorrectionType) -> Self {
    base.autocorrectionType = type
    return self
  }
  
  /// PropertySetter to access the `leftView` `propertySetter` of the `textField` directly
  /// >Tip: Since `leftView` is `optional` this propertySetter will set an empty view when it's nil:  `base.set.leftView(UIView())`.
  /// Therefore it is highly recommended to set a custom `leftView` before editing it's properties.
  ///
  /// - Example:
  /// ```swift
  ///  private let textField = UITextField()
  ///  private let imageView = UIImageView()
  ///
  ///  private func setupUI() {
  ///       textField.set
  ///          .text("Foo")
  ///          .placeholder("Name")
  ///        // Set textField's leftView
  ///          .leftView(imageView)
  ///        // Set leftView properties
  ///          .leftViewProperties { set in
  ///             set
  ///              .contentMode(.scaleAspectFill)
  ///              .image(Images.bird)
  ///          }
  ///        // Fall back to the textField properties
  ///          .textAlignment(.center)
  ///  }
  /// ```
  @discardableResult
  func leftViewProperties(_ block: @escaping (PropertySetter<UIView>) -> Void) -> Self {
    if let view = base.leftView {
      block(view.set)
    } else {
      base.set.leftView(UIView())
      block(base.leftView!.set)
    }
    return self
  }
  
  /// PropertySetter to access the `rightView` `propertySetter` of the `textField` directly
  /// >Tip: Since `rightView` is `optional` this propertySetter will set an empty view when it's nil:  `base.set.rightView(UIView())`.
  /// Therefore it is highly recommended to set a custom `rightView` before editing it's properties.
  ///
  /// - Example:
  /// ```swift
  ///  private let textField = UITextField()
  ///  private let imageView = UIImageView()
  ///
  ///  private func setupUI() {
  ///       textField.set
  ///          .text("Foo")
  ///          .placeholder("Name")
  ///        // Set textField's leftView
  ///          .rightView(imageView)
  ///        // Set rightView properties
  ///          .rightViewProperties { set in
  ///             set
  ///              .contentMode(.scaleAspectFill)
  ///              .image(Images.bird)
  ///          }
  ///        // Fall back to the textField properties
  ///          .textAlignment(.center)
  ///  }
  /// ```
  @discardableResult
  func rightViewProperties(_ block: @escaping (PropertySetter<UIView>) -> Void) -> Self {
    if let view = base.rightView {
      block(view.set)
    } else {
      base.set.rightView(UIView())
      block(base.rightView!.set)
    }
    return self
  }
  
  /// PropertySetter wrapper for `.leftView`
  /// - **Summary:**  The overlay view that displays on the left (or leading) side of the text field.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextfield/1619597-leftview) for more info.
  @discardableResult
  func leftView(_ view: UIView?) -> Self {
    base.leftView = view
    return self
  }
  
  /// PropertySetter wrapper for `.rightView`
  /// - **Summary:**  The overlay view that displays on the right (or trailing) side of the text field.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextfield/1619596-rightview) for more info.
  @discardableResult
  func rightView(_ view: UIView?) -> Self {
    base.rightView = view
    return self
  }
  
  /// PropertySetter wrapper for `.leftViewMode`
  /// - **Summary:**  A mode that controls when the left overlay view appears in the text field.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextfield/1619588-leftviewmode) for more info.
  @discardableResult
  func leftViewMode(_ mode: UITextField.ViewMode) -> Self {
    base.leftViewMode = mode
    return self
  }
  
  /// PropertySetter wrapper for `.rightViewMode`
  /// - **Summary:**  A mode that controls when the right overlay view appears in the text field.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextfield/1619607-rightviewmode) for more info.
  @discardableResult
  func rightViewMode(_ mode: UITextField.ViewMode) -> Self {
    base.rightViewMode = mode
    return self
  }
  
  /// PropertySetter wrapper for `.adjustsFontForContentSizeCategory`
  /// - **Summary:**  A Boolean that indicates whether the object automatically updates its font when the device’s content size category changes.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uicontentsizecategoryadjusting/1771731-adjustsfontforcontentsizecategor) for more info.
  @discardableResult
  func adjustsFontForContentSizeCategory(_ bool: Bool) -> Self {
    base.adjustsFontForContentSizeCategory = bool
    return self
  }
  
  /// PropertySetter wrapper for `.adjustsFontSizeToFitWidth`
  /// - **Summary:**  A Boolean value that indicates whether to reduce the font size to fit the text string into the text field’s bounding rectangle.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextfield/1619625-adjustsfontsizetofitwidth) for more info.
  @discardableResult
  func adjustsFontSizeToFitWidth(_ bool: Bool) -> Self {
    base.adjustsFontSizeToFitWidth = bool
    return self
  }
  
  /// PropertySetter wrapper for `.allowsEditingTextAttributes`
  /// - **Summary:**  A Boolean value that determines whether the user can edit the attributes of the text in the text field.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextfield/1619628-allowseditingtextattributes) for more info.
  @discardableResult
  func allowsEditingTextAttributes(_ bool: Bool) -> Self {
    base.allowsEditingTextAttributes = bool
    return self
  }
  
  /// PropertySetter wrapper for `.background`
  /// - **Summary:**  The image that represents the background appearance of the text field when it is in an enabled state.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextfield/1619623-background) for more info.
  @discardableResult
  func background(_ image: UIImage?) -> Self {
    base.background = image
    return self
  }
  
  /// PropertySetter wrapper for `.disabledBackground`
  /// - **Summary:**  The image that represents the background appearance of the text field when it is in a disabled state.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextfield/1619611-disabledbackground) for more info.
  @discardableResult
  func disabledBackground(_ image: UIImage?) -> Self {
    base.disabledBackground = image
    return self
  }
  
  /// PropertySetter wrapper for `.clearButtonMode`
  /// - **Summary:**  A mode that controls when the standard Clear button appears in the text field.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextfield/1619622-clearbuttonmode) for more info.
  @discardableResult
  func clearButtonMode(_ mode: UITextField.ViewMode) -> Self {
    base.clearButtonMode = mode
    return self
  }
  
  /// PropertySetter wrapper for `.clearsOnBeginEditing`
  /// - **Summary:**  A Boolean value that determines whether the text field removes old text when editing begins.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextfield/1619639-clearsonbeginediting) for more info.
  @discardableResult
  func clearsOnBeginEditing(_ bool: Bool) -> Self {
    base.clearsOnBeginEditing = bool
    return self
  }
  
  /// PropertySetter wrapper for `.clearsOnInsertion`
  /// - **Summary:**  A Boolean value that determines whether inserting text replaces the previous contents.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextfield/1619631-clearsoninsertion) for more info.
  @discardableResult
  func clearsOnInsertion(_ bool: Bool) -> Self {
    base.clearsOnInsertion = bool
    return self
  }
  
  /// PropertySetter wrapper for `.defaultTextAttributes`
  /// - **Summary:**  The default attributes to apply to the text.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextfield/1619618-defaulttextattributes) for more info.
  @discardableResult
  func defaultTextAttributes(_ attributes: [NSAttributedString.Key : Any]) -> Self {
    base.defaultTextAttributes = attributes
    return self
  }
  
  /// PropertySetter wrapper for `.enablesReturnKeyAutomatically`
  /// - **Summary:**  A Boolean value that indicates whether the system automatically enables the Return key when the user enters text.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinputtraits/1624432-enablesreturnkeyautomatically) for more info.
  @discardableResult
  func enablesReturnKeyAutomatically(_ bool: Bool) -> Self {
    base.enablesReturnKeyAutomatically = bool
    return self
  }
  
  /// PropertySetter wrapper for `.inputAccessoryView`
  /// - **Summary:**  The custom accessory view to display when the text field becomes the first responder.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextfield/1619627-inputaccessoryview) for more info.
  @discardableResult
  func inputAccessoryView(_ view: UIView?) -> Self {
    base.inputAccessoryView = view
    return self
  }
  
  /// PropertySetter wrapper for `.inputDelegate`
  /// - **Summary:**  An input delegate that receives a notification when text changes or when the selection changes.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinput/1614508-inputdelegate) for more info.
  @discardableResult
  func inputDelegate(_ delegate: UITextInputDelegate?) -> Self {
    base.inputDelegate = delegate
    return self
  }
  
  /// PropertySetter wrapper for `.inputView`
  /// - **Summary:**  The custom input view to display when the text field becomes the first responder.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextfield/1619620-inputview) for more info.
  @discardableResult
  func inputView(_ view: UIView?) -> Self {
    base.inputView = view
    return self
  }
  
  /// PropertySetter wrapper for `.isSecureTextEntry`
  /// - **Summary:**  A Boolean value that indicates whether a text object disables copying, and in some cases, prevents recording/broadcasting and also hides the text.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinputtraits/1624427-issecuretextentry) for more info.
  @discardableResult
  func secureTextEntry(_ bool: Bool) -> Self {
    base.isSecureTextEntry = bool
    return self
  }
  
  /// PropertySetter wrapper for `.keyboardAppearance`
  /// - **Summary:**  The appearance style of the keyboard for the text object.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinputtraits/1624434-keyboardappearance) for more info.
  @discardableResult
  func keyboardAppearance(_ appearance: UIKeyboardAppearance) -> Self {
    base.keyboardAppearance = appearance
    return self
  }
  
  /// PropertySetter wrapper for `.markedTextStyle`
  /// - **Summary:**  A dictionary of attributes that describes how to draw marked text.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinput/1614500-markedtextstyle) for more info.
  @discardableResult
  func markedTextStyle(_ style: [NSAttributedString.Key : Any]) -> Self {
    base.markedTextStyle = style
    return self
  }
  
  /// PropertySetter wrapper for `.minimumFontSize`
  /// - **Summary:**  The size of the smallest permissible font when drawing the text field’s text.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextfield/1619605-minimumfontsize) for more info.
  @discardableResult
  func minimumFontSize(_ cgFloat: CGFloat) -> Self {
    base.minimumFontSize = cgFloat
    return self
  }
  
  /// PropertySetter wrapper for `.passwordRules`
  /// - **Summary:**  Requirements for passwords for your service to ensure iOS can generate compatible passwords for users.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinputtraits/2980934-passwordrules) for more info.
  @discardableResult
  func passwordRules(_ rules: UITextInputPasswordRules?) -> Self {
    base.passwordRules = rules
    return self
  }
  
  /// PropertySetter wrapper for `.pasteDelegate`
  /// - **Summary:**  The text paste delegate that handles pasting and dropping of text, using item providers.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextpasteconfigurationsupporting/2887494-pastedelegate) for more info.
  @discardableResult
  func pasteDelegate(_ delegate: UITextPasteDelegate?) -> Self {
    base.pasteDelegate = delegate
    return self
  }
  
  /// PropertySetter wrapper for `.returnKeyType`
  /// - **Summary:**  The visible title of the Return key.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinputtraits/1624446-returnkeytype) for more info.
  @discardableResult
  func returnKeyType(_ type: UIReturnKeyType) -> Self {
    base.returnKeyType = type
    return self
  }
  
  /// PropertySetter wrapper for `.selectedTextRange`
  /// - **Summary:**  The range of selected text in a document.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinput/1614541-selectedtextrange) for more info.
  @discardableResult
  func selectedTextRange(_ range: UITextRange?) -> Self {
    base.selectedTextRange = range
    return self
  }
  
  /// PropertySetter wrapper for `.selectionAffinity`
  /// - **Summary:**  The desired location for the insertion point.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinput/1614539-selectionaffinity) for more info.
  @discardableResult
  func selectionAffinity(_ affinity: UITextStorageDirection) -> Self {
    base.selectionAffinity = affinity
    return self
  }
  
  /// PropertySetter wrapper for `.smartDashesType`
  /// - **Summary:**  The configuration state for smart dashes.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinputtraits/2866013-smartdashestype) for more info.
  @discardableResult
  func smartDashesType(_ type: UITextSmartDashesType) -> Self {
    base.smartDashesType = type
    return self
  }
  
  /// PropertySetter wrapper for `.smartInsertDeleteType`
  /// - **Summary:**  The configuration state for the smart insertion and deletion of space characters.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinputtraits/2865828-smartinsertdeletetype) for more info.
  @discardableResult
  func smartInsertDeleteType(_ type: UITextSmartInsertDeleteType) -> Self {
    base.smartInsertDeleteType = type
    return self
  }
  
  /// PropertySetter wrapper for `.smartQuotesType`
  /// - **Summary:**  The configuration state for smart quotes.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinputtraits/2865931-smartquotestype) for more info.
  @discardableResult
  func smartQuotesType(_ type: UITextSmartQuotesType) -> Self {
    base.smartQuotesType = type
    return self
  }
  
  /// PropertySetter wrapper for `.textAlignment`
  /// - **Summary:**  The technique for aligning the text.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextfield/1619643-textalignment) for more info.
  @discardableResult
  func textAlignment(_ alignment: NSTextAlignment) -> Self {
    base.textAlignment = alignment
    return self
  }
  
  /// PropertySetter wrapper for `.textContentType`
  /// - **Summary:**  The semantic meaning for a text input area.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinputtraits/1649656-textcontenttype) for more info.
  @discardableResult
  func textContentType(_ type: UITextContentType) -> Self {
    base.textContentType = type
    return self
  }
  
  /// PropertySetter wrapper for `.textDragDelegate`
  /// - **Summary:**  A text drag delegate object for customizing the drag source behavior of a text view.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextdraggable/2890903-textdragdelegate) for more info.
  @discardableResult
  func textDragDelegate(_ delegate: UITextDragDelegate?) -> Self {
    base.textDragDelegate = delegate
    return self
  }
  
  /// PropertySetter wrapper for `.textDropDelegate`
  /// - **Summary:**  The text drop delegate for interacting with a drop activity in the text view.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextdroppable/2890860-textdropdelegate) for more info.
  @discardableResult
  func textDropDelegate(_ delegate: UITextDropDelegate?) -> Self {
    base.textDropDelegate = delegate
    return self
  }
  
  /// PropertySetter wrapper for `.textDragOptions`
  /// - **Summary:**  The options for the text drag operation.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextdraggable/2897255-textdragoptions) for more info.
  @discardableResult
  func textDragOptions(_ options: UITextDragOptions) -> Self {
    base.textDragOptions = options
    return self
  }
  
  /// PropertySetter wrapper for `.typingAttributes`
  /// - **Summary:**  The attributes to apply to new text that the user enters.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextfield/1619632-typingattributes) for more info.
  @discardableResult
  func typingAttributes(_ attributes: [NSAttributedString.Key : Any]) -> Self {
    base.typingAttributes = attributes
    return self
  }
  
  /// PropertySetter wrapper for `.becomeFirstResponder()` and `.resignFirstResponder()` depending on a parameter value
  @discardableResult
  func firstResponder(_ bool: Bool) -> Self {
    if bool {
      base.becomeFirstResponder()
    } else {
      base.resignFirstResponder()
    }
    return self
  }
  
  /// PropertySetter wrapper for `.spellCheckingType`
  /// - **Summary:**  The spell-checking style for the text object.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinputtraits/1624461-spellcheckingtype) for more info.
  @discardableResult
  func spellCheckingType(_ type: UITextSpellCheckingType) -> Self {
    base.spellCheckingType = type
    return self
  }
  
  /// PropertySetter wrapper for `.setBaseWritingDirection(_:, for:)`
  /// - **Summary:**  Sets the base writing direction for a specified range of text in a document.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinput/1614563-setbasewritingdirection) for more info.
  @discardableResult
  func baseWritingDirection(_ direction: NSWritingDirection, for range: UITextRange) -> Self {
    base.setBaseWritingDirection(direction, for: range)
    return self
  }
  
  /// PropertySetter wrapper for `.setMarkedText(_:, selectedRange:)`
  /// - **Summary:**  Inserts the provided text and marks it to indicate that it is part of an active input session.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinput/1614465-setmarkedtext) for more info.
  @discardableResult
  func markedText(_ text: String?, selectedRange: NSRange) -> Self {
    base.setMarkedText(text, selectedRange: selectedRange)
    return self
  }
  
  /// PropertySetter wrapper for `.attributedMarkedText(_:, selectedRange:)`
  /// - **Summary:**  Inserts the provided styled text and marks it to indicate that it is part of an active input session.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinput/3213955-setattributedmarkedtext) for more info.
  @discardableResult
  func attributedMarkedText(_ text: NSAttributedString?, selectedRange: NSRange) -> Self {
    base.setAttributedMarkedText(text, selectedRange: selectedRange)
    return self
  }
  
}

// MARK: - iOS15 properties
@available(iOS 15.0, *)
public extension PropertySetter where Base: UITextField {
  
  /// PropertySetter wrapper for `.interactionState`
  @discardableResult
  func interactionState(_ state: Any) -> Self {
    base.interactionState = state
    return self
  }
}

// MARK: - iOS17 properties
@available(iOS 17.0, *)
public extension PropertySetter where Base: UITextField {
  
  /// PropertySetter wrapper for `.inlinePredictionType`
  /// - **Summary:**  The behavior of inline text predictions for a text-entry area.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinputtraits/4240862-inlinepredictiontype) for more info.
  @discardableResult
  func inlinePredictionType(_ type: UITextInlinePredictionType) -> Self {
    base.inlinePredictionType = type
    return self
  }
  
  /// PropertySetter wrapper for `.sizingRule`
  @discardableResult
  func sizingRule(_ rule: UILetterformAwareSizingRule) -> Self {
    base.sizingRule = rule
    return self
  }
}
