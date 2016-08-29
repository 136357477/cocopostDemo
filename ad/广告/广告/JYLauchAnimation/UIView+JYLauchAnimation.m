//
//  UIView+JYLauchAnimation.m
//  LoadAd
//
//  Created by qingyun on 16/1/8.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "UIView+JYLauchAnimation.h"

//current window
#define kCurrentWindow [[UIApplication sharedApplication].windows firstObject]


@implementation UIView (JYLauchAnimation)

- (void)showInView:(UIView *)superView animation:(id<JYLaunchAnimationProtocol>)animation completion:(void (^)(BOOL finished))completion
{
    if (superView == nil) {
        NSLog(@"superView can't nil");
        return;
    }
    superView.hidden = NO;
    [superView addSubview:self];
    [superView bringSubviewToFront:self];
    
    self.frame = superView.bounds;
    
    if (animation && [animation respondsToSelector:@selector(configureAnimationWithView:completion:)]) {
        [animation configureAnimationWithView:self completion:completion];
    }else {
        completion(YES);
    }
}

- (void)showInWindowWithAnimation:(id<JYLaunchAnimationProtocol>)animation completion:(void (^)(BOOL finished))completion
{
    [self showInView:kCurrentWindow animation:animation completion:completion];
}


@end
