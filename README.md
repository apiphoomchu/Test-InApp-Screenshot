# Test-InApp-Screenshot
Test in App Screenshot for iOS/iPadOS

1. A `UIGraphicsImageRenderer` object is created with the bounds of the current view.
2. The `image(actions:)` method is called on the renderer object. This method takes a closure, where you call `render(in:)` on the view's layer, passing the `cgContext` of the image renderer context.
3. This will create an image of the view's layer, effectively taking a screenshot.
4. The screenshot is then saved to the photo library with `UIImageWriteToSavedPhotosAlbum()`.
5. As before, you need to have the `NSPhotoLibraryAddUsageDescription` key in your `Info.plist` to get the user's permission to save photos to the photo library.
