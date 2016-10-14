//
//  UIImage+TFSize.h
//  TestFlightNewA
//
//  Created by 於林涛 on 9/8/16.
//  Copyright © 2016 刘佳杰. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (TFSize)
+ (UIImage *)imageWithColor:(UIColor *)aColor;
+ (UIImage *)imageWithColor:(UIColor *)aColor withFrame:(CGRect)aFrame;
- (UIImage*)scaledToSize:(CGSize)targetSize;
- (UIImage*)scaledToSize:(CGSize)targetSize highQuality:(BOOL)highQuality;
- (UIImage*)scaledToMaxSize:(CGSize )size;
@end
