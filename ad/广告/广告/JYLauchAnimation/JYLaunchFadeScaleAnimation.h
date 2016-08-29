//
//  JYLaunchFadeScaleAnimation.h
//  LoadAd
//
//  Created by qingyun on 16/1/8.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "JYLaunchBaseAnimation.h"

@interface JYLaunchFadeScaleAnimation : JYLaunchBaseAnimation

@property (nonatomic, assign) CGFloat scale;   // scale ratio default 1.6

+ (instancetype)fadeAnimation;

+ (instancetype)fadeScaleAnimation; // default

+ (instancetype)fadeAnimationWithDelay:(CGFloat)delay;

@end
