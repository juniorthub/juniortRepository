//
//  ImageData.h
//  ScrollView
//
//  Created by qianfeng on 15-6-27.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ImageData : NSObject

@property(retain,nonatomic)UIImageView *imageView;
@property(copy,nonatomic)NSString *indexOfImage;
@property(copy,nonatomic)NSString *descriptionOfimage;

+(NSArray *)loadDataWithKay:(NSString *)key;

- (UIImage *)loadImageViewWithIndex:(NSUInteger)index;

- (NSString *)loadDescriptionWithIndex:(NSUInteger)index;

@end
