Welcome to the AQPhotoPicker wiki!

It's a cool Photo Picker app for iOS (tested on iPhone, not on iPad yet), and quite easy to use.

You only have to copy three files in your project:

**AQPhotoPickerView.h**

**AQPhotoPickerView.m**

**AQPhotoPickerView.xib**


Then import **#import "TTImagePickerView.h"** in your own class, and implement the delegate **TTImagePickerViewDelegate**.

You're all set. Now all you've to do is write this code `[AQPhotoPickerView presentInViewController:self];` on the image tap method, or button click. And finally implement this delegate to received the photo from PhotoPicker or Camera.

-(void)photoFromImagePickerView:(UIImage*) photo {
    
    [imageViewPic setImage:photo];
}

**DONE.**

![ios photo picker](https://github.com/aqavi-paracha/AQPhotoPicker/blob/master/doc/IMG_1371.PNG)

![ios photo picker](https://github.com/aqavi-paracha/AQPhotoPicker/blob/master/doc/IMG_1368.PNG)

![ios photo picker, camera](https://github.com/aqavi-paracha/AQPhotoPicker/blob/master/doc/IMG_1369.PNG)

![ios Photo picker, camera](https://github.com/aqavi-paracha/AQPhotoPicker/blob/master/doc/IMG_1370.PNG)
