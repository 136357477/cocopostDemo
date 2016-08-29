//
//  ViewController.m
//  UILabel_ContentSize_Demo
//
//  Created by guohui on 16/8/24.
//  Copyright © 2016年 guohui. All rights reserved.
//

#import "ViewController.h"
#import <UILabel+ContentSize.h>
/**
 *  实现 lab 的自动高度布局
 */
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *labHeight;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *string = @"Get the content size of a UILabel with text, because I always forget how to and want to have it in one god damn place." ;
    self.label.text = string ;
    CGSize size_lab = [self.label contentSizeForWidth:self.label.frame.size.width];
    NSLog(@"width:%lf   \nheight:%lf",size_lab.width,size_lab.height);
    self.labHeight.constant =  size_lab.height ;
    
    
    UILabel *labelsss = [[UILabel alloc]init];
    labelsss.text = string ;
    labelsss.numberOfLines = 0 ;
    CGSize size = [labelsss contentSizeForWidth:100] ;
    labelsss.frame = CGRectMake(20, 200, size.width, size.height);
    [self.view addSubview:labelsss];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
