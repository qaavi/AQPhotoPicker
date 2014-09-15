//
//  AQPhotoPickerVC.m
//  MeeFree.com
//
//  Created by Abdul_Qavi on 14/09/2014.
//  Copyright (c) 2014 MeeFree.com. All rights reserved.
//

#import "AQPhotoPickerView.h"


@interface AQPhotoPickerViewOwner : NSObject
@property (nonatomic, weak) IBOutlet AQPhotoPickerView *decoupledView;
@end

@implementation AQPhotoPickerViewOwner
@end


@interface AQPhotoPickerView ()

@property (nonatomic, weak) UIViewController <AQPhotoPickerViewDelegate> *delegateViewController;
@property (nonatomic) UIImagePickerController *imagePickerController;

@end

@implementation AQPhotoPickerView

+(void)presentInViewController:(UIViewController<AQPhotoPickerViewDelegate>*) viewController
{
    // Instantiating encapsulated here.
    AQPhotoPickerViewOwner *owner = [AQPhotoPickerViewOwner new];
    [[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:owner options:nil];
    
    // Pass in a reference of the viewController.
    owner.decoupledView.delegateViewController = viewController;

    [viewController.view addSubview:owner.decoupledView];
}

#pragma mark - Image capture and picker methods

- (IBAction)selectPhoto:(id)sender {
    
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    [self.delegateViewController presentViewController:picker animated:YES completion:nil];
}

- (IBAction)takePhoto:(id)sender {

    if (![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        UIAlertView* alert = [[UIAlertView alloc] initWithTitle:nil message:@"Test on real device, camera is not available in simulator" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
        [alert show];
        return;
    }

    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypeCamera;
    
    [self.delegateViewController presentViewController:picker animated:YES completion:nil];
    [self.imagePickerController takePicture];
}

#pragma mark - UIImagePickerControllerDelegate

// This method is called when an image has been chosen from the library or taken from the camera.
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    UIImage *chosenImage = info[UIImagePickerControllerEditedImage];
    [picker dismissViewControllerAnimated:YES completion:NULL];
    
    [self removeFromSuperview];
    [self.delegateViewController photoFromImagePickerView:chosenImage];
    
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
    [self removeFromSuperview];
}

#pragma mark - Utility methods 

- (IBAction)backgroundViewTapped:(id)sender {
    
    [self removeFromSuperview];
}

@end
