//
//  DBAllCellOne.m
//  Douban -ImitationDemo
//
//  Created by 岳靖翔 on 2019/10/21.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "DBAllCellOne.h"
#import <Masonry.h>
@implementation DBAllCellOne
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.imagePic = [[UIImageView alloc] init];
        [self addSubview:self.imagePic];
        
        self.labelTitle = [[UILabel alloc] init];
        [self addSubview:self.labelTitle];
        
        self.labelJianjie = [[UILabel alloc]init];
        [self addSubview:self.labelJianjie];
        [_labelJianjie setNumberOfLines:2];
        [_labelJianjie setTextColor:[UIColor grayColor]];
        [_labelJianjie setFont:[UIFont systemFontOfSize:12]];
        
        self.labelHave = [[UILabel alloc] init];
        [self addSubview:self.labelHave];
        [_labelHave setTextColor:[UIColor grayColor]];
        [_labelHave setFont:[UIFont systemFontOfSize:10]];
        
        self.buttonBuy = [[UIButton alloc] init];
        [self addSubview:self.buttonBuy];
        [_buttonBuy setTitle:@"购票" forState:UIControlStateNormal];
        _buttonBuy.layer.borderColor = [[UIColor redColor]CGColor];
        _buttonBuy.layer.borderWidth = 0.5f;
        
        self.labelHave = [[UILabel alloc]init];
        [self addSubview:self.labelHave];
        
       
        
    }
    return self;
}

@end
