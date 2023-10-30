//
//  UISearchBar+PropertySetter.swift
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

// MARK: - UISearchBar
public extension PropertySetter where Base: UISearchBar {
  
  /// PropertySetter wrapper for `.delegate`
  /// - **Summary:**  The search bar’s delegate object.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisearchbar/1624291-delegate) for more info.
  @inlinable
  @discardableResult
  func delegate(_ delegate: UISearchBarDelegate?) -> Self {
    base.delegate = delegate
    return self
  }
  
  /// PropertySetter wrapper for `.text`
  /// - **Summary:**  The current or starting search text.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisearchbar/1624282-text) for more info.
  @inlinable
  @discardableResult
  func text(_ text: String?) -> Self {
    base.text = text
    return self
  }
  
  /// PropertySetter wrapper for `.placeholder`
  /// - **Summary:**  The string to display when there’s no other text in the text field.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisearchbar/1624322-placeholder) for more info.
  @inlinable
  @discardableResult
  func placeholder(_ text: String?) -> Self {
    base.placeholder = text
    return self
  }
  
  /// PropertySetter wrapper for `.prompt`
  /// - **Summary:**  A single line of text displayed at the top of the search bar.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisearchbar/1624326-prompt) for more info.
  @inlinable
  @discardableResult
  func prompt(_ text: String?) -> Self {
    base.prompt = text
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
  
  /// PropertySetter wrapper for `.enablesReturnKeyAutomatically`
  /// - **Summary:**  A Boolean value that indicates whether the system automatically enables the Return key when the user enters text.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinputtraits/1624432-enablesreturnkeyautomatically) for more info.
  @inlinable
  @discardableResult
  func enablesReturnKeyAutomatically(_ bool: Bool) -> Self {
    base.enablesReturnKeyAutomatically = bool
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
  
  /// PropertySetter wrapper for `.keyboardType`
  /// - **Summary:**  The keyboard type for the text object.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinputtraits/1624457-keyboardtype) for more info.
  @inlinable
  @discardableResult
  func keyboardType(_ type: UIKeyboardType) -> Self {
    base.keyboardType = type
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
  
  /// PropertySetter wrapper for `.returnKeyType`
  /// - **Summary:**  The visible title of the Return key.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinputtraits/1624446-returnkeytype) for more info.
  @inlinable
  @discardableResult
  func returnKeyType(_ type: UIReturnKeyType) -> Self {
    base.returnKeyType = type
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
  
  /// PropertySetter to access the `searchTextField` `propertySetter` of the `searchBar` directly
  ///
  /// - Example:
  /// ```swift
  ///  private func setupUI() {
  ///       searchController.searchBar.set
  ///          .text("Foo")
  ///          .placeholder("Name")
  ///        // Set searchTextField properties
  ///          .searchTextFieldProperties { set in
  ///             set
  ///              .font(.systemFont(ofSize: 10))
  ///          }
  ///        // Fall back to the searchBar properties
  ///          .delegate(self)
  ///  }
  /// ```
  @inlinable
  @discardableResult
  func searchTextFieldProperties(_ block: @escaping (PropertySetter<UISearchTextField>) -> Void) -> Self {
    block(base.searchTextField.set)
    return self
  }
  
  /// PropertySetter wrapper for `.showsCancelButton`
  /// - **Summary:**  A Boolean value indicating whether the cancel button is displayed.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisearchbar/1624283-showscancelbutton) for more info.
  @inlinable
  @discardableResult
  func showsCancelButton(_ bool: Bool) -> Self {
    base.showsCancelButton = bool
    return self
  }
  
  /// PropertySetter wrapper for `.backgroundImage`
  /// - **Summary:**  The background image for the search bar.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisearchbar/1624276-backgroundimage) for more info.
  @inlinable
  @discardableResult
  func backgroundImage(_ image: UIImage?) -> Self {
    base.backgroundImage = image
    return self
  }
  
  /// PropertySetter wrapper for `.barStyle`
  /// - **Summary:**  A bar style that specifies the search bar’s appearance.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisearchbar/1624270-barstyle) for more info.
  @inlinable
  @discardableResult
  func barStyle(_ style: UIBarStyle) -> Self {
    base.barStyle = style
    return self
  }
  
  /// PropertySetter wrapper for `.barTintColor`
  /// - **Summary:**  The tint color to apply to the search bar background.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisearchbar/1624295-bartintcolor) for more info.
  @inlinable
  @discardableResult
  func barTintColor(_ color: UIColor?) -> Self {
    base.barTintColor = color
    return self
  }
  
  /// PropertySetter wrapper for `.tintColor`
  /// - **Summary:**  The tint color to apply to key elements in the search bar.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisearchbar/1624286-tintcolor) for more info.
  @inlinable
  @discardableResult
  func tintColor(_ color: UIColor?) -> Self {
    base.tintColor = color
    return self
  }
  
  /// PropertySetter wrapper for `.isTranslucent`
  /// - **Summary:**  A Boolean value that indicates whether the search bar is translucent (true) or not (false).
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisearchbar/1624321-istranslucent) for more info.
  @inlinable
  @discardableResult
  func translucent(_ bool: Bool) -> Self {
    base.isTranslucent = bool
    return self
  }
  
  /// PropertySetter wrapper for `.inputAccessoryView`
  /// - **Summary:**  A custom input accessory view for the keyboard of the search bar.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisearchbar/1624279-inputaccessoryview) for more info.
  @inlinable
  @discardableResult
  func inputAccessoryView(_ view: UIView?) -> Self {
    base.inputAccessoryView = view
    return self
  }
  
  /// PropertySetter wrapper for `.isSearchResultsButtonSelected`
  /// - **Summary:**  A Boolean value indicating whether the search results button is selected.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisearchbar/1624285-issearchresultsbuttonselected) for more info.
  @inlinable
  @discardableResult
  func searchResultsButtonSelected(_ bool: Bool) -> Self {
    base.isSearchResultsButtonSelected = bool
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
  
  /// PropertySetter wrapper for `.scopeBarBackgroundImage`
  /// - **Summary:**  The background image for the scope bar.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisearchbar/1624317-scopebarbackgroundimage) for more info.
  @inlinable
  @discardableResult
  func scopeBarBackgroundImage(_ image: UIImage?) -> Self {
    base.scopeBarBackgroundImage = image
    return self
  }
  
  /// PropertySetter wrapper for `.scopeButtonTitles`
  /// - **Summary:**  An array of strings indicating the titles of the scope buttons.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisearchbar/1624292-scopebuttontitles) for more info.
  @inlinable
  @discardableResult
  func scopeButtonTitles(_ titles: [String]?) -> Self {
    base.scopeButtonTitles = titles
    return self
  }
  
  /// PropertySetter wrapper for `.searchBarStyle`
  /// - **Summary:**  A search bar style that specifies the search bar’s appearance.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisearchbar/1624281-searchbarstyle) for more info.
  @inlinable
  @discardableResult
  func searchBarStyle(_ style: UISearchBar.Style) -> Self {
    base.searchBarStyle = style
    return self
  }
  
  /// PropertySetter wrapper for `.searchFieldBackgroundPositionAdjustment`
  /// - **Summary:**  The offset of the search text field background in the search bar.
  @inlinable
  @discardableResult
  func searchFieldBackgroundPositionAdjustment(_ offset: UIOffset) -> Self {
    base.searchFieldBackgroundPositionAdjustment = offset
    return self
  }
  
  /// PropertySetter wrapper for `.searchTextPositionAdjustment`
  /// - **Summary:**  The offset of the text within the search text field background.
  @inlinable
  @discardableResult
  func searchTextPositionAdjustment(_ offset: UIOffset) -> Self {
    base.searchTextPositionAdjustment = offset
    return self
  }
  
  /// PropertySetter wrapper for `.selectedScopeButtonIndex`
  /// - **Summary:**  The index of the selected scope button.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisearchbar/1624287-selectedscopebuttonindex) for more info.
  @inlinable
  @discardableResult
  func selectedScopeButtonIndex(_ index: Int) -> Self {
    base.selectedScopeButtonIndex = index
    return self
  }
  
  /// PropertySetter wrapper for `.showsBookmarkButton`
  /// - **Summary:**  A Boolean value indicating whether the bookmark button is displayed.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisearchbar/1624298-showsbookmarkbutton) for more info.
  @inlinable
  @discardableResult
  func showsBookmarkButton(_ bool: Bool) -> Self {
    base.showsBookmarkButton = bool
    return self
  }
  
  /// PropertySetter wrapper for `.showsScopeBar`
  /// - **Summary:**  Specifies whether the scope bar is displayed.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisearchbar/1624319-showsscopebar) for more info.
  @inlinable
  @discardableResult
  func showsScopeBar(_ bool: Bool) -> Self {
    base.showsScopeBar = bool
    return self
  }
  
  /// PropertySetter wrapper for `.showsSearchResultsButton`
  /// - **Summary:**  A Boolean value indicating whether the search results button is displayed.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisearchbar/1624273-showssearchresultsbutton) for more info.
  @inlinable
  @discardableResult
  func showsSearchResultsButton(_ bool: Bool) -> Self {
    base.showsSearchResultsButton = bool
    return self
  }
  
  /// PropertySetter wrapper for `.setImage(_:, for:, state:)`
  /// - **Summary:**  Sets the image for a given search bar icon type and control state.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisearchbar/1624330-setimage) for more info.
  @inlinable
  @discardableResult
  func image(_ iconImage: UIImage?, for icon: UISearchBar.Icon, state: UIControl.State) -> Self {
    base.setImage(iconImage, for: icon, state: state)
    return self
  }
  
  /// PropertySetter wrapper for `.setShowsScope(_:, animated:)`
  /// - **Summary:**  Specifies whether the scope bar is displayed, optionally using an animation.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisearchbar/3152925-setshowsscope) for more info.
  @inlinable
  @discardableResult
  func showsScope(_ show: Bool, animated: Bool) -> Self {
    base.setShowsScope(show, animated: animated)
    return self
  }
  
  /// PropertySetter wrapper for `.setPositionAdjustment(_:, for:)`
  /// - **Summary:**  Returns the position adjustment for a given icon.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisearchbar/1624278-setpositionadjustment) for more info.
  @inlinable
  @discardableResult
  func positionAdjustment(_ adjust: UIOffset, for icon: UISearchBar.Icon) -> Self {
    base.setPositionAdjustment(adjust, for: icon)
    return self
  }
  
  /// PropertySetter wrapper for `.setShowsCancelButton(_:, animated:)`
  /// - **Summary:**  Sets the display state of the cancel button optionally with animation.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisearchbar/1624293-setshowscancelbutton) for more info.
  @inlinable
  @discardableResult
  func showsCancelButton(_ showsCancelButton: Bool, animated: Bool) -> Self {
    base.setShowsCancelButton(showsCancelButton, animated: animated)
    return self
  }
  
  /// PropertySetter wrapper for `.setSearchFieldBackgroundImage(_:, for:)`
  /// - **Summary:**  Sets the search text field image for a given state.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisearchbar/1624307-setsearchfieldbackgroundimage) for more info.
  @inlinable
  @discardableResult
  func searchFieldBackgroundImage(_ iconImage: UIImage?, state: UIControl.State) -> Self {
    base.setSearchFieldBackgroundImage(iconImage, for: state)
    return self
  }
  
  /// PropertySetter wrapper for `.setBackgroundImage(_:, for:, barMetrics:)`
  /// - **Summary:**  Sets the image to use for the background in a given position and with given metrics.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisearchbar/1624325-setbackgroundimage) for more info.
  @inlinable
  @discardableResult
  func backgroundImage(_ iconImage: UIImage?, for position: UIBarPosition, barMetrics: UIBarMetrics) -> Self {
    base.setBackgroundImage(iconImage, for: position, barMetrics: barMetrics)
    return self
  }
  
  /// PropertySetter wrapper for `.setScopeBarButtonBackgroundImage(_:, for:)`
  /// - **Summary:**  Sets the background image for the scope bar button in a given state.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisearchbar/1624290-setscopebarbuttonbackgroundimage) for more info.
  @inlinable
  @discardableResult
  func scopeBarButtonBackgroundImage(_ backgroundImage: UIImage?, state: UIControl.State) -> Self {
    base.setScopeBarButtonBackgroundImage(backgroundImage, for: state)
    return self
  }
  
  /// PropertySetter wrapper for `.setScopeBarButtonTitleTextAttributes(_, for:)`
  /// - **Summary:**  Sets the text attributes for the search bar’ button’s title string for a given state.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisearchbar/1624277-setscopebarbuttontitletextattrib) for more info.
  @inlinable
  @discardableResult
  func setScopeBarButtonTitleTextAttributes(_ attributes: [NSAttributedString.Key: Any]?, state: UIControl.State) -> Self {
    base.setScopeBarButtonTitleTextAttributes(attributes, for: state)
    return self
  }
  
  /// PropertySetter wrapper for `.setScopeBarButtonDividerImage(_:, forLeftSegmentState:, rightSegmentState:)`
  /// - **Summary:**  Sets the divider image to use for a given combination of left and right segment states.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uisearchbar/1624308-setscopebarbuttondividerimage) for more info.
  @inlinable
  @discardableResult
  func scopeBarButtonDividerImage(_ dividerImage: UIImage?, forLeftSegmentState: UIControl.State, rightSegmentState: UIControl.State) -> Self {
    base.setScopeBarButtonDividerImage(dividerImage, forLeftSegmentState: forLeftSegmentState, rightSegmentState: rightSegmentState)
    return self
  }
  
}

// MARK: - iOS16.4 properties
@available(iOS 16.4, *)
public extension PropertySetter where Base: UISearchBar {
  
  /// PropertySetter wrapper for `.isEnabled`
  @inlinable
  @discardableResult
  func enabled(_ bool: Bool) -> Self {
    base.isEnabled = bool
    return self
  }
  
}

// MARK: - iOS17 properties
@available(iOS 17, *)
public extension PropertySetter where Base: UISearchBar {
  
  /// PropertySetter wrapper for `.isLookToDictateEnabled`
  @inlinable
  @discardableResult
  func isLookToDictateEnabled(_ bool: Bool) -> Self {
    base.isLookToDictateEnabled = bool
    return self
  }
  
  /// PropertySetter wrapper for `.inlinePredictionType`
  /// - **Summary:**  The behavior of inline text predictions for a text-entry area.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uitextinputtraits/4240862-inlinepredictiontype) for more info.
  @inlinable
  @discardableResult
  func inlinePredictionType(_ type: UITextInlinePredictionType) -> Self {
    base.inlinePredictionType = type
    return self
  }
  
}
