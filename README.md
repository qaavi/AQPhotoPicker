# The AQPhotoPicker Master Repo

This repository contains the public [AQPhotoPicker](https://github.com/aqavi-paracha/AQPhotoPicker_cocoapod) specifications.


## Welcome to the AQPhotoPicker!

It's a cool Photo Picker app for iOS (tested on iPhone, not on iPad yet), and quite easy to use.


## Requirements

Your iOS project. (Tested on iOS versions 7.0 and 7.1. Should work on previous versions as well)

> **Note**: This is ARC-enabled code. You'll need Xcode 4.2 and OS X 10.6, at least.  

## Installation

Either clone and copy the following three files in your project:

**AQPhotoPickerView.h**

**AQPhotoPickerView.m**

**AQPhotoPickerView.xib**

Or use [CocoaPods](http://cocoapods.org).


## Usage

Do **#import "TTImagePickerView.h"** in your own class, and implement the delegate **TTImagePickerViewDelegate**.

You're all set. Now all you've to do is write this code
`[AQPhotoPickerView presentInViewController:self];` 
on the image tap method, or button click, or for whatever event you want photo picker to appear.

And finally implement this delegate to received the photo from PhotoPicker or Camera.

```objc
-(void)photoFromImagePickerView:(UIImage*) photo {
    
    [imageViewPic setImage:photo];
}
```

**DONE.**

![ios photo picker](https://github.com/aqavi-paracha/AQPhotoPicker/blob/master/doc/IMG_1371.PNG)

![ios photo picker](https://github.com/aqavi-paracha/AQPhotoPicker/blob/master/doc/IMG_1368.PNG)

![ios photo picker, camera](https://github.com/aqavi-paracha/AQPhotoPicker/blob/master/doc/IMG_1369.PNG)

![ios Photo picker, camera](https://github.com/aqavi-paracha/AQPhotoPicker/blob/master/doc/IMG_1370.PNG)

## License

These specifications and CocoaPods are available under the [MIT license](http://www.opensource.org/licenses/mit-license.php).