//
//  UIView+JYLauchAnimation.h
//  LoadAd
//
//  Created by qingyun on 16/1/8.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JYLaunchAnimationProtocol.h"

@interface UIView (JYLauchAnimation)

- (void)showInWindowWithAnimation:(id<JYLaunchAnimationProtocol>)animation completion:(void (^)(BOOL finished))completion;

- (void)showInView:(UIView *)superView animation:(id<JYLaunchAnimationProtocol>)animation completion:(void (^)(BOOL finished))completion;

@end
