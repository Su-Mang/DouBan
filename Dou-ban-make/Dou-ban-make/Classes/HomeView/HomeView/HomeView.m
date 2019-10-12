//
//  HomeView.m
//  Dou-ban-make
//
//  Created by 岳靖翔 on 2019/10/12.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "HomeView.h"
#import <Masonry.h>
@implementation HomeView


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        self.backView = [[UIView alloc]init];
        [self addSubview:self.backView];
        [self.backView setBackgroundColor:[UIColor colorWithRed:0.4039 green:0.72941176 blue:0.38431373 alpha:1]];
        self.BootomView = [[UIView alloc]init];
        [self.BootomView setBackgroundColor:[UIColor whiteColor]];
        [self addSubview:self.BootomView];
        self.searchBar = [[UITextField alloc]init];
        [self addSubview:self.searchBar];
        self.searchBar.placeholder = @"  豆瓣app";
        
        UIImageView *viewPicture = [[UIImageView alloc]init];
        [viewPicture setImage:[UIImage imageNamed:@"weibiaoti--2.png"]];
        [viewPicture setFrame:CGRectMake(10, 10, 20, 20)];
        self.searchBar.leftView = viewPicture;
        self.searchBar.leftViewMode = UITextFieldViewModeAlways ;
        UIImageView *viewPictureRight = [[UIImageView alloc]init];
        [viewPictureRight setImage:[UIImage imageNamed:@"saoyisao.png"]];
        [viewPictureRight setFrame:CGRectMake(25, 10, 20, 20)];
        self.searchBar.rightView = viewPictureRight;
         self.searchBar.rightViewMode = UITextFieldViewModeAlways ;
        self.searchBar.layer.cornerRadius = 13;
        self.searchBar.backgroundColor = [UIColor whiteColor];
        self.leftButton = [[UIButton alloc]init];
        [self addSubview:self.leftButton];
        [self.leftButton setTitle:@"动态" forState:UIControlStateNormal];
         [self.leftButton setTitleColor: [UIColor grayColor] forState:UIControlStateNormal];
        [self.leftButton setTitleColor: [UIColor greenColor] forState:UIControlStateSelected];
        [self.leftButton addTarget:self action:@selector(changedColor:) forControlEvents:UIControlEventTouchUpInside];
        self.leftButton.tag = 1;

         self.rightButton = [[UIButton alloc]init];
        [self addSubview:self.rightButton];
        [self.rightButton setTitle:@"推荐" forState:UIControlStateNormal];
         [self.rightButton setTitleColor: [UIColor grayColor] forState:UIControlStateNormal];
        [self.rightButton setTitleColor:[UIColor greenColor] forState:UIControlStateSelected];
        [self.rightButton addTarget:self action:@selector(changedColor:) forControlEvents:UIControlEventTouchUpInside];
        
    }
    return self;
}
    

    

- (void)layoutSubviews {
    [self.backView setFrame:CGRectMake(0, 0, self.frame.size.width, 70)];
    [self.searchBar mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.backView.mas_top).offset(20);
        make.width.mas_equalTo(self.frame.size.width/3*2);
        make.height.mas_equalTo(35);
        make.left.mas_equalTo(20);
    }];
    [self.BootomView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.backView.mas_bottom);
        make.width.mas_equalTo(self.frame.size.width);
        make.height.mas_equalTo(40);
    }];
    [self.leftButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.backView.mas_bottom).offset(15);
        make.width.mas_equalTo(self.frame.size.width/2-20);
        make.height.mas_equalTo(20);
         make.left.mas_equalTo(20);
    }];
    [self.rightButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.backView.mas_bottom).offset(15);
        make.width.mas_equalTo(self.frame.size.width/2-20);
        make.height.mas_equalTo(20);
        make.right.mas_equalTo(-20);
    }];
}
-(void)changedColor :(UIButton*) button {
    if(button.tag == 1) {
        _leftButton.selected = !_leftButton.selected;
        _rightButton.selected = NO;
    }
    else {
        _rightButton.selected = !_rightButton.selected;
        _leftButton.selected = NO;
    }
}
@end

