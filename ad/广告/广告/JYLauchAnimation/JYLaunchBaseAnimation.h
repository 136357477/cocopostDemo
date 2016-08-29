//
//  JYLaunchBaseAnimation.h
//  LoadAd
//
//  Created by qingyun on 16/1/8.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JYLaunchAnimationProtocol.h"

@interface JYLaunchBaseAnimation : NSObject<JYLaunchAnimationProtocol>

@property (nonatomic, assign) CGFloat duration;// duration time
@property (nonatomic, assign) CGFloat delay;   // delay hide
@property (nonatomic, assign) UIViewAnimationOptions options;

@end
