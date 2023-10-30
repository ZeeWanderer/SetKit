//
//  UIImagePickerController+PropertySetter.swift
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

// MARK: - UIImagePickerController
public extension PropertySetter where Base: UIImagePickerController {
  
  /// PropertySetter wrapper for `.delegate`
  /// - **Summary:** The image picker’s delegate object.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiimagepickercontroller/1619145-delegate) for more info.
  @discardableResult
  func delegate(_ delegate: (UIImagePickerControllerDelegate & UINavigationControllerDelegate)?) -> Self {
    base.delegate = delegate
    return self
  }
  
  /// PropertySetter wrapper for `.sourceType`
  /// - **Summary:** The type of picker interface to be displayed by the controller.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiimagepickercontroller/1619167-sourcetype) for more info.
  @discardableResult
  func sourceType(_ type: UIImagePickerController.SourceType) -> Self {
    base.sourceType = type
    return self
  }
  
  /// PropertySetter wrapper for `.allowsEditing`
  /// - **Summary:** A Boolean value that indicates whether the user is allowed to edit a selected still image or movie.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiimagepickercontroller/1619137-allowsediting) for more info.
  @discardableResult
  func allowsEditing(_ bool: Bool) -> Self {
    base.allowsEditing = bool
    return self
  }
  
  /// PropertySetter wrapper for `.mediaTypes`
  /// - **Summary:** An array that indicates the media types to access by the media picker controller.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiimagepickercontroller/1619173-mediatypes) for more info.
  ///
  /// **Examples:**
  /// ```swift
  /// myImagePickerController.set
  ///     .mediaTypes = [UTType.movie.identifier]
  /// ```
  /// ```swift
  /// if let mediaTypes = UIImagePickerController.availableMediaTypes(for: .camera) {
  ///     myImagePickerController.set
  ///         .mediaTypes(mediaTypes)
  /// }
  /// ```
  @discardableResult
  func mediaTypes(_ types: [String]) -> Self {
    base.mediaTypes = types
    return self
  }
  
  /// PropertySetter wrapper for `.cameraCaptureMode`
  /// - **Summary:** The capture mode used by the camera.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiimagepickercontroller/1619141-cameracapturemode) for more info.
  @discardableResult
  func cameraCaptureMode(_ mode: UIImagePickerController.CameraCaptureMode) -> Self {
    base.cameraCaptureMode = mode
    return self
  }
  
  /// PropertySetter wrapper for `.cameraDevice`
  /// - **Summary:** The camera used by the image picker controller.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiimagepickercontroller/1619117-cameradevice) for more info.
  @discardableResult
  func cameraDevice(_ device: UIImagePickerController.CameraDevice) -> Self {
    base.cameraDevice = device
    return self
  }
  
  /// PropertySetter wrapper for `.cameraFlashMode`
  /// - **Summary:** The flash mode used by the active camera.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiimagepickercontroller/1619124-cameraflashmode) for more info.
  @discardableResult
  func cameraFlashMode(_ mode: UIImagePickerController.CameraFlashMode) -> Self {
    base.cameraFlashMode = mode
    return self
  }
  
  /// PropertySetter wrapper for `.cameraOverlayView`
  /// - **Summary:** The view to display on top of the default image picker interface.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiimagepickercontroller/1619113-cameraoverlayview) for more info.
  @discardableResult
  func cameraOverlayView(_ view: UIView?) -> Self {
    base.cameraOverlayView = view
    return self
  }
  
  /// PropertySetter wrapper for `.cameraViewTransform`
  /// - **Summary:** The transform to apply to the camera’s preview image.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiimagepickercontroller/1619142-cameraviewtransform) for more info.
  @discardableResult
  func cameraViewTransform(_ transform: CGAffineTransform) -> Self {
    base.cameraViewTransform = transform
    return self
  }
  
  /// PropertySetter wrapper for `.showsCameraControls`
  /// - **Summary:**  A Boolean value that indicates whether the image picker displays the default camera controls.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiimagepickercontroller/1619129-showscameracontrols) for more info.
  @discardableResult
  func showsCameraControls(_ bool: Bool) -> Self {
    base.showsCameraControls = bool
    return self
  }
  
  /// PropertySetter wrapper for `.videoMaximumDuration`
  /// - **Summary:**  The maximum duration, in seconds, for a video recording.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiimagepickercontroller/1619146-videomaximumduration) for more info.
  @discardableResult
  func videoMaximumDuration(_ duration: TimeInterval) -> Self {
    base.videoMaximumDuration = duration
    return self
  }
  
  /// PropertySetter wrapper for `.videoQuality`
  /// - **Summary:**  The video recording and transcoding quality.
  /// See [**documentation**](https://developer.apple.com/documentation/uikit/uiimagepickercontroller/1619154-videoquality) for more info.
  @discardableResult
  func videoQuality(_ quality: UIImagePickerController.QualityType) -> Self {
    base.videoQuality = quality
    return self
  }
}
