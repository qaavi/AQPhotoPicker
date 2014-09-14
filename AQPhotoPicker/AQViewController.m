//
//  AQViewController.m
//  AQPhotoPicker
//
//  Created by Abdul_Qavi on 14/09/2014.
//  Copyright (c) 2014 MeeFree.com. All rights reserved.
//

#import "AQViewController.h"

#import "AQPhotoPickerView.h"

@interface AQViewController () <AQPhotoPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *imageViewPic;

@end

@implementation AQViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - AQPhotoPickerView methods

- (IBAction)imageTapped:(id)sender {
    
    [AQPhotoPickerView presentInViewController:self];
}

#pragma mark - AQPhotoPickerViewDelegate methods

-(void)photoFromImagePickerView:(UIImage*) photo {
    
    [self.imageViewPic setImage:photo];
}

@end
