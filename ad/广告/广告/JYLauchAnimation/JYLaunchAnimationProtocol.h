//
//  JYLaunchAnimationProtocol.h
//  LoadAd
//
//  Created by qingyun on 16/1/8.
//  Copyright © 2016年 qingyun. All rights reserved.
//

//#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol JYLaunchAnimationProtocol <NSObject>

- (void)configureAnimationWithView:(UIView *)view completion:(void (^)(BOOL finished))completion;

@end
