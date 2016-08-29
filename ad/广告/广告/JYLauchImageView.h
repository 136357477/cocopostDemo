//
//  JYLauchImageView.h
//  LoadAd
//
//  Created by qingyun on 16/1/8.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JYLauchImageView : UIImageView

@property (nonatomic, strong) NSString *URLString;

@property (nonatomic, copy) void (^clickedImageURLHandle)(NSString *URLString);

@end
