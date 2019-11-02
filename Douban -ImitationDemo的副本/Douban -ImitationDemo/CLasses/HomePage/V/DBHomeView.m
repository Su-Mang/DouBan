//
//  DBHomeView.m
//  Douban -ImitationDemo
//
//  Created by 岳靖翔 on 2019/10/15.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "DBHomeView.h"
#import <Masonry.h>
@implementation DBHomeView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        
        self.backView = [[UIView alloc] init];
        [self addSubview:self.backView];
        [self.backView setBackgroundColor:[UIColor colorWithRed:0.4039 green:0.72941176 blue:0.38431373 alpha:1]];
        
        self.searchBar = [[UITextField alloc] init];
        [self addSubview:self.searchBar];
        self.searchBar.placeholder = @" 从你的全世界路过 ";
        [self.searchBar setFont:[UIFont systemFontOfSize:12]];
        UIImageView *viewPicture = [[UIImageView alloc] init];
        [viewPicture setImage:[UIImage imageNamed:@"weibiaoti--2.png"]];
        [viewPicture setFrame:CGRectMake(20, 10, 20, 20)];
        self.searchBar.leftView = viewPicture;
        self.searchBar.leftViewMode = UITextFieldViewModeAlways ;
        UIImageView *viewPictureRight = [[UIImageView alloc] init];
        [viewPictureRight setImage:[UIImage imageNamed:@"saoyisao.png"]];
        [viewPictureRight setFrame:CGRectMake(25, 10, 20, 20)];
        self.searchBar.rightView = viewPictureRight;
        self.searchBar.rightViewMode = UITextFieldViewModeAlways ;
        self.searchBar.layer.cornerRadius = 13;
        self.searchBar.backgroundColor = [UIColor whiteColor];
        
        self.buttonRight = [[UIButton alloc]init];
        [self.backView addSubview:self.buttonRight];
        [self.buttonRight setImage:[UIImage imageNamed:@"duanxin-2.png"] forState:UIControlStateNormal];
        
        self.BUttonFlow = [[DBButtonView alloc] init];
        [self addSubview:_BUttonFlow];
        
        self.scrollViewFlow = [[UIScrollView alloc]init];
        [self addSubview:self.scrollViewFlow];
        [self.scrollViewFlow setContentOffset:CGPointMake(self.frame.size.width, 0) animated:YES];
        self.scrollViewFlow.showsHorizontalScrollIndicator = NO;
        self.scrollViewFlow.pagingEnabled = YES;
//        _sta = [[DBStarView alloc] initWithFrame:CGRectMake(100, 100, 200, 30) :7];
//        [self.scrollViewFlow addSubview:_sta];
//        
    }
    return self;
}
#pragma mark -界面布局
- (void)layoutSubviews {
    [super layoutSubviews];
    
    [self.backView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.top.width.equalTo(self);
        make.height.mas_equalTo(60);
    }];
    
    [self.searchBar mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(self.backView.mas_top).offset(20);
        make.width.mas_equalTo(self.frame.size.width/3*2+10);
        make.height.mas_equalTo(30);
        make.left.mas_equalTo(20);
    }];
    
    [self.buttonRight mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.backView.mas_top).offset(20);
        make.width.mas_equalTo(30);
        make.height.mas_equalTo(30);
        make.right.mas_equalTo(-30);
    }];
    [self.BUttonFlow mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.backView.mas_bottom);
        make.left.right.mas_equalTo(self.backView);
        make.height.mas_equalTo(33);
    }];
    
    [self.scrollViewFlow setContentSize:CGSizeMake(self.frame.size.width * 2, 0)];
    [self.scrollViewFlow mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.BUttonFlow.mas_bottom);
        make.bottom.mas_equalTo(self);
        make.left.right.mas_equalTo(self.backView);
    }];
}
@end
