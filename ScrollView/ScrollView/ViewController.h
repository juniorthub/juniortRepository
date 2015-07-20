//
//  ViewController.h
//  ScrollView
//
//  Created by qianfeng on 15-6-26.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *imageTitle;
@property (weak, nonatomic) IBOutlet UILabel *imageNumber;
@property (weak, nonatomic) IBOutlet UIStepper *steeper;
@property (weak, nonatomic) IBOutlet UISlider *slider;


- (IBAction)imageModel:(id)sender;

- (IBAction)steeper:(id)sender;

- (IBAction)slider:(id)sender;

@end
