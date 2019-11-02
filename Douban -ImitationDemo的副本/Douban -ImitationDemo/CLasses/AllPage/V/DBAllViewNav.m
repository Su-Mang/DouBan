//
//  DBAllViewNav.m
//  Douban -ImitationDemo
//
//  Created by 岳靖翔 on 2019/10/19.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "DBAllViewNav.h"
#import <Masonry.h>
@implementation DBAllViewNav

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.buttonBack = [[UIButton alloc] init];
        [self addSubview:self.buttonBack];
        [self.buttonBack setTitle:@"院线电影" forState:UIControlStateNormal];
        [ self.buttonBack setImage:   [UIImage imageNamed:@"changyongtubiao-xianxingdaochu-zhuanqu--3.png"] forState:UIControlStateNormal];
        [self.buttonBack setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0, -50)];
        [self.buttonBack.titleLabel setFont:[UIFont systemFontOfSize:20]];
        [self.buttonBack setImageEdgeInsets:UIEdgeInsetsMake(0, -10, 0, 0)];
        [self.buttonBack setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [self.buttonBack mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.left.mas_equalTo(self).offset(25);
            make.width.mas_equalTo(100);
            make.height.mas_equalTo(30);
        }];
        
        
        self.buttonPlace = [[UIButton alloc] init];
        [self addSubview:self.buttonPlace];
        [self.buttonPlace setTitleEdgeInsets:UIEdgeInsetsMake(0, -120, 0, 0)];
        [self.buttonPlace.titleLabel setFont:[UIFont systemFontOfSize:13]];
        [self.buttonPlace setImageEdgeInsets:UIEdgeInsetsMake(0, -10, 0, 0)];
        [self.buttonPlace setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [self.buttonPlace setTitle:@"北京" forState:UIControlStateNormal];
        [self.buttonPlace setImage:[UIImage imageNamed:@"xiajiantou.png"] forState:UIControlStateNormal];
        [self.buttonPlace mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.right.mas_equalTo(self).offset(22);
            make.height.mas_equalTo(40);
            make.width.mas_equalTo(50);
        }];
        
        
        self.buttonOne = [[UIButton alloc] init];
        [self addSubview:self.buttonOne];
        [self.buttonOne setTitle:@"正在热映" forState:UIControlStateNormal];
        [self.buttonOne mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.buttonBack.mas_bottom);
            make.left.mas_equalTo(self).offset(20);
            make.width.mas_equalTo(80);
            make.height.mas_equalTo(30);
        }];
        [self.buttonOne setTitleColor:[UIColor colorWithRed:0.5098 green:0.50588 blue:0.5098 alpha:0.8] forState:UIControlStateNormal];
        [self.buttonOne setTitleColor:[UIColor colorWithRed:0.10196 green:0.094 blue:0.10196 alpha:0.9] forState:UIControlStateSelected];
        [self.buttonOne addTarget:self action:@selector(change:) forControlEvents:UIControlEventTouchUpInside];
        self.buttonOne.tag = 1;
        
        
        self.buttonTwo = [[UIButton alloc] init];
        [self addSubview:self.buttonTwo];
        [self.buttonTwo mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.buttonBack.mas_bottom);
            make.left.mas_equalTo(self.buttonOne.mas_right).offset(20);
            make.width.mas_equalTo(80);
            make.height.mas_equalTo(30);
        }];
        self.buttonOne.selected = YES;
       
        
          [self.buttonTwo setTitle:@"即将上映" forState:UIControlStateNormal];
        [self.buttonTwo setTitleColor:[UIColor colorWithRed:0.5098 green:0.50588 blue:0.5098 alpha:0.8] forState:UIControlStateNormal];
        [self.buttonTwo setTitleColor:[UIColor colorWithRed:0.10196 green:0.094 blue:0.10196 alpha:0.9] forState:UIControlStateSelected];
        [self.buttonTwo addTarget:self action:@selector(change:) forControlEvents:UIControlEventTouchUpInside];
        self.buttonTwo.tag = 2;
        
        self.buttonThree = [[UIButton alloc] init];
        [self addSubview:self.buttonThree];
        [self.buttonThree mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.buttonBack.mas_bottom);
            make.left.mas_equalTo(self.buttonTwo.mas_right).offset(20);
            make.width.mas_equalTo(130);
            make.height.mas_equalTo(30);
        }];
        [self.buttonThree setTitle:@"10月观影指南" forState:UIControlStateNormal];
        [self.buttonThree setTitleColor:[UIColor colorWithRed:0.5098 green:0.50588 blue:0.5098 alpha:0.8] forState:UIControlStateNormal];
        [self.buttonThree setTitleColor:[UIColor colorWithRed:0.10196 green:0.094 blue:0.10196 alpha:0.9] forState:UIControlStateSelected];
        [self.buttonThree addTarget:self action:@selector(change:) forControlEvents:UIControlEventTouchUpInside];
        self.buttonThree.tag = 3;
        
        self.buttonOneImage = [[UIButton alloc] init];
        [self addSubview:self.buttonOneImage];
        [self.buttonOneImage mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.buttonOne.mas_bottom);
            make.left.mas_equalTo(self).offset(20);
            make.width.mas_equalTo(80);
            make.height.mas_equalTo(30);
        }];
        [self.buttonOneImage setImage:[UIImage imageNamed:@"F860B514-1921-4732-9624-0BA8640A556E.png"] forState:UIControlStateSelected];
        [self.buttonOneImage setImage:[UIImage imageNamed:@"B6D0CB0F-AD87-4827-9A44-ABF62C248D13.png"] forState:UIControlStateNormal];
        self.buttonOneImage.selected = YES;
        
        self.buttonTwoImage = [[UIButton alloc] init];
        [self addSubview:self.buttonTwoImage];
        [self.buttonTwoImage mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.buttonOne.mas_bottom);
            make.left.mas_equalTo(self.buttonOneImage.mas_right).offset(20);
            make.width.mas_equalTo(80);
            make.height.mas_equalTo(30);
        }];
        [self.buttonTwoImage setImage:[UIImage imageNamed:@"F860B514-1921-4732-9624-0BA8640A556E.png"] forState:UIControlStateSelected];
        [self.buttonTwoImage setImage:[UIImage imageNamed:@"B6D0CB0F-AD87-4827-9A44-ABF62C248D13.png"] forState:UIControlStateNormal];

        
        self.buttonThreeImage = [[UIButton alloc] init];
        [self addSubview:self.buttonThreeImage];
        [self.buttonThreeImage mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.buttonOne.mas_bottom);
            make.left.mas_equalTo(self.buttonTwoImage.mas_right).offset(20);
            make.width.mas_equalTo(130);
            make.height.mas_equalTo(30);
        }];
        [self.buttonThreeImage setImage:[UIImage imageNamed:@"D9405BAB-2849-4622-90D5-B3190E56DCF1.png"] forState:UIControlStateSelected];
        [self.buttonThreeImage setImage:[UIImage imageNamed:@"B6D0CB0F-AD87-4827-9A44-ABF62C248D13.png"] forState:UIControlStateNormal];

        
    }
    return self;
}
#pragma mark -添加事件
-(void)change:(UIButton *)button {
    if (button.tag == 1) {
        self.buttonOne.selected = YES;
        self.buttonOneImage.selected = YES;
        self.buttonTwo.selected = NO;
        self.buttonTwoImage.selected =NO;
        self.buttonThree.selected = NO;
        self.buttonThreeImage.selected = NO;
    }else if (button.tag == 2) {
        self.buttonOne.selected = NO;
        self.buttonOneImage.selected = NO;
        self.buttonTwo.selected = YES;
        self.buttonTwoImage.selected = YES;
        self.buttonThree.selected = NO;
        self.buttonThreeImage.selected = NO;
    }
    else {
        self.buttonOne.selected = NO;
        self.buttonOneImage.selected = NO;
        self.buttonTwo.selected = NO;
        self.buttonTwoImage.selected = NO;
        self.buttonThree.selected = YES;
        self.buttonThreeImage.selected = YES;
    }
}
@end
