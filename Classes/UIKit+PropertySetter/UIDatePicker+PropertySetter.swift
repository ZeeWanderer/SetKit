//
//  UIDatePicker+PropertySetter.swift
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

// MARK: - UIDatePicker
public extension PropertySetter where Base: UIDatePicker {
  
  /// PropertySetter wrapper for `.date`
  /// - **Summary:**  The date displayed by the date picker.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uidatepicker/1615975-date) for more info.
  @inlinable
  @discardableResult
  func date(_ date: Date) -> Self {
    base.date = date
    return self
  }
  
  /// PropertySetter wrapper for `.setDate(_:, animated:)`
  /// - **Summary:**  Sets the date to display in the date picker, with an option to animate the setting.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uidatepicker/1615971-setdate) for more info.
  @inlinable
  @discardableResult
  func date(_ date: Date, animated: Bool) -> Self {
    base.setDate(date, animated: animated)
    return self
  }
  
  /// PropertySetter wrapper for `.datePickerMode`
  /// - **Summary:**  The mode of the date picker.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uidatepicker/1615997-datepickermode) for more info.
  @inlinable
  @discardableResult
  func datePickerMode(_ mode: UIDatePicker.Mode) -> Self {
    base.datePickerMode = mode
    return self
  }
  
  /// PropertySetter wrapper for `.minimumDate`
  /// - **Summary:**  The minimum date that a date picker can show.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uidatepicker/1615980-minimumdate) for more info.
  @inlinable
  @discardableResult
  func minimumDate(_ date: Date?) -> Self {
    base.minimumDate = date
    return self
  }
  
  /// PropertySetter wrapper for `.maximumDate`
  /// - **Summary:**  The maximum date that a date picker can show.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uidatepicker/1615999-maximumdate) for more info.
  @inlinable
  @discardableResult
  func maximumDate(_ date: Date?) -> Self {
    base.maximumDate = date
    return self
  }
  
  /// PropertySetter wrapper for `.calendar`
  /// - **Summary:**  The calendar to use for the date picker.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uidatepicker/1615973-calendar) for more info.
  @inlinable
  @discardableResult
  func calendar(_ calendar: Calendar) -> Self {
    base.calendar = calendar
    return self
  }
  
  /// PropertySetter wrapper for `.countDownDuration`
  /// - **Summary:**  The value displayed by the date picker when the mode property is set to show a countdown time.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uidatepicker/1615986-countdownduration) for more info.
  @inlinable
  @discardableResult
  func countDownDuration(_ duration: TimeInterval) -> Self {
    base.countDownDuration = duration
    return self
  }
  
  /// PropertySetter wrapper for `.locale`
  /// - **Summary:**  The locale used by the date picker.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uidatepicker/1615995-locale) for more info.
  @inlinable
  @discardableResult
  func locale(_ locale: Locale?) -> Self {
    base.locale = locale
    return self
  }
  
  /// PropertySetter wrapper for `.minuteInterval`
  /// - **Summary:**  The interval at which the date picker should display minutes.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uidatepicker/1615998-minuteinterval) for more info.
  @inlinable
  @discardableResult
  func minuteInterval(_ interval: Int) -> Self {
    base.minuteInterval = interval
    return self
  }
  
  /// PropertySetter wrapper for `.timeZone`
  /// - **Summary:**  The time zone reflected in the date displayed by the date picker.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uidatepicker/1615976-timezone) for more info.
  @inlinable
  @discardableResult
  func timeZone(_ timeZone: TimeZone?) -> Self {
    base.timeZone = timeZone
    return self
  }
  
}

// MARK: - iOS14.4 properties
@available(iOS 13.4, *)
public extension PropertySetter where Base: UIDatePicker {
  
  /// PropertySetter wrapper for `.preferredDatePickerStyle`
  /// - **Summary:**  The preferred style of the date picker.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uidatepicker/3526124-preferreddatepickerstyle) for more info.
  @inlinable
  @discardableResult
  func preferredDatePickerStyle(_ style: UIDatePickerStyle) -> Self {
    base.preferredDatePickerStyle = style
    return self
  }
  
}

// MARK: - iOS15 properties
@available(iOS 15, *)
public extension PropertySetter where Base: UIDatePicker {
  
  /// PropertySetter wrapper for `.roundsToMinuteInterval`
  /// - **Summary:**  A Boolean value that determines whether the date rounds to a specific minute interval.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uidatepicker/3791478-roundstominuteinterval) for more info.
  @inlinable
  @discardableResult
  func roundsToMinuteInterval(_ bool: Bool) -> Self {
    base.roundsToMinuteInterval = bool
    return self
  }
  
}
