//
//  ImageData.m
//  ScrollView
//
//  Created by qianfeng on 15-6-27.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "ImageData.h"

@implementation ImageData

+(NSArray *)loadDataWithKay:(NSString *)key
{
    NSMutableArray *data = [NSMutableArray array];
    NSString *filePath = [[NSBundle mainBundle]pathForResource:@"images" ofType:@"plist"];
    NSArray *array = [NSArray arrayWithContentsOfFile:filePath];
    for (NSDictionary *dict in array) {
        [data addObject:[dict valueForKey:key]];
    }
    
    return data;
}

- (UIImage *)loadImageViewWithIndex:(NSUInteger)index
{
    UIImage *image = [UIImage imageNamed:[ImageData loadDataWithKay:@"icon"][index]];
    return image;
}

- (NSString *)loadDescriptionWithIndex:(NSUInteger)index
{
    NSString *description = [ImageData loadDataWithKay:@"title"][index];
    return description;
}

@end
