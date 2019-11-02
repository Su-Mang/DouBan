//
//  DBButtonView.m
//  Douban -ImitationDemo
//
//  Created by 岳靖翔 on 2019/10/15.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "DBButtonView.h"

@implementation DBButtonView

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.buttonleft = [[UIButton alloc]init];
        [self addSubview:self.buttonleft];
        [self.buttonleft setTitle:@"动态" forState:UIControlStateNormal];
        [self.buttonleft setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [self.buttonleft setTitleColor:[UIColor colorWithRed:0.4039 green:0.72941176 blue:0.38431373 alpha:1] forState:UIControlStateSelected];
        [self.buttonleft.titleLabel setFont:[UIFont systemFontOfSize:13]];
         [self.buttonleft addTarget:self action:@selector(clickChange:) forControlEvents:UIControlEventTouchUpInside];
        self.buttonleft.tag = 1;
        self.buttonleft.selected = YES;
        
        self.buttonRight = [[UIButton alloc]init];
        [self addSubview:self.buttonRight];
        [self.buttonRight setTitle:@"推荐" forState:UIControlStateNormal];
        [self.buttonRight setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [self.buttonRight setTitleColor:[UIColor colorWithRed:0.4039 green:0.72941176 blue:0.38431373 alpha:1] forState:UIControlStateSelected];
         [self.buttonRight.titleLabel setFont:[UIFont systemFontOfSize:13]];
        [self.buttonRight addTarget:self action:@selector(clickChange:) forControlEvents:UIControlEventTouchUpInside];
        self.buttonRight.tag = 2;
        
        self.scviewFlow = [[UIScrollView alloc]init];
        [self addSubview:self.scviewFlow];
        UIImageView * imageLeft = [[UIImageView alloc] init];
         [imageLeft setImage:[UIImage imageNamed: @"0F2548AA-B2FD-40B5-8E5F-ADA55420F90A.png"]];
        [self.scviewFlow addSubview:imageLeft];
        UIImageView * imageRight = [[UIImageView alloc]init];
        [imageRight setImage:[UIImage imageNamed: @"0F2548AA-B2FD-40B5-8E5F-ADA55420F90A.png"]];
        [self.scviewFlow addSubview:imageRight];
        
        [imageLeft setFrame:CGRectMake(0, 0, 38, 3)];
        [imageRight setFrame:CGRectMake(200, 0, 38, 3)];
        
        
        
    }
    return self;
}
#pragma mark -设置布局
- (void)layoutSubviews {
    [super layoutSubviews];
    
    [self.buttonleft setFrame:CGRectMake(100, 0, 40, 30)];
    [self.buttonRight setFrame:CGRectMake(200, 0, 40, 30)];
    
    [self.scviewFlow setFrame:CGRectMake(100, 30, 140, 3)];
    [self.scviewFlow setContentSize: CGSizeMake(240, 3)];
    
    
}
#pragma mark -按钮点击
-(void)clickChange:(UIButton*)button {
    if (button.tag==1) {
        self.buttonleft.selected = YES;
        self.buttonRight.selected = NO;
        [self.scviewFlow setContentOffset:CGPointMake(200, 0)];
        
    }
    else{
        self.buttonleft.selected = NO;
        self.buttonRight.selected = YES;
        [self.scviewFlow setContentOffset:CGPointMake(100, 0)];
    }
}
@end
