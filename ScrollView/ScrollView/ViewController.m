//
//  ViewController.m
//  ScrollView
//
//  Created by qianfeng on 15-6-26.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "ViewController.h"
#import "ImageData.h"

@implementation ViewController
{
    ImageData *imageData;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
//    imageData = [[ImageData alloc]init];
//    UIImageView  *imageView = [imageData loadImageViewWithIndex:4];
//    [self.view addSubview:imageView];
    




}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)imageModel:(id)sender
{
    UISwitch *mySwitch = (UISwitch *)sender;
    if ([mySwitch isOn]) {
        self.view.backgroundColor = [UIColor darkGrayColor];
    }
    
    else
        self.view.backgroundColor = [UIColor whiteColor];
}

- (IBAction)steeper:(id)sender
{
    UIStepper *mySteeper = (UIStepper *)sender;
    NSUInteger index = mySteeper.value - 1;
    _slider.value = mySteeper.value;
    [self synchronizeShowWithIndex:index];
    
}

- (IBAction)slider:(id)sender
{
    UISlider *mySlider = (UISlider *)sender;
    
    NSInteger index = mySlider.value - 1;
    _steeper.value = _steeper.value;
    [self synchronizeShowWithIndex:index];
 }

- (void)synchronizeShowWithIndex:(NSUInteger)index
{
    imageData = [[ImageData alloc]init];
    _imageView.image = [imageData loadImageViewWithIndex:index];
    _imageTitle.text = [imageData loadDescriptionWithIndex:index];
    _imageNumber.text = [NSString stringWithFormat:@"%d/%d",index + 1,[ImageData loadDataWithKay:@"icon"].count];

}
@end
