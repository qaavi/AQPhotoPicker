//
//  AQPhotoPickerVC.h
//  MeeFree.com
//
//  Created by Abdul_Qavi on 14/09/2014.
//  Copyright (c) 2014 MeeFree.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AQPhotoPickerView;
@protocol AQPhotoPickerViewDelegate
-(void)photoFromImagePickerView:(UIImage*)photo;
@end

@interface AQPhotoPickerView : UIView <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

+(void)presentInViewController:(UIViewController<AQPhotoPickerViewDelegate>*) viewController;

- (IBAction)takePhoto:(id)sender;
- (IBAction)selectPhoto:(id)sender;

@end
