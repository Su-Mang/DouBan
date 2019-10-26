//
//  DBAllTableViewCellOne.m
//  Douban -ImitationDemo
//
//  Created by 岳靖翔 on 2019/10/21.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "DBAllTableViewCellOne.h"
#import <Masonry.h>
@implementation DBAllTableViewCellOne

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self =  [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self) {
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
        [_buttonBuy setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [_buttonBuy.titleLabel setFont:[UIFont systemFontOfSize:12]];
    
        
        self.labelHave = [[UILabel alloc]init];
        [self addSubview:self.labelHave];
        [self.labelHave setFont:[UIFont systemFontOfSize:10]];
        [_labelHave setTextColor:[UIColor grayColor]];
        
        self.starView = [[DBStarView alloc] init];
        [self addSubview:self.starView];
        
    }
    return self;
}
- (void)layoutSubviews {
    [super layoutSubviews];
    [_imagePic mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.bottom.mas_equalTo(self).offset(10);
        make.width.mas_equalTo(85);
    }];
    [_labelTitle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.imagePic);
        make.left.mas_equalTo(self.imagePic.mas_right);
        make.height.mas_equalTo(20);
        make.width.mas_equalTo(100);
    }];
    [_starView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.labelTitle.mas_bottom).offset(5);
        make.left.mas_equalTo(self.imagePic.mas_right).offset(5);
        make.height.mas_equalTo(8);
        make.width.mas_equalTo(100);
    }];
    [_labelJianjie mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.starView.mas_bottom).offset(5);
        make.left.mas_equalTo(self.imagePic.mas_right).offset(5);
        make.height.mas_equalTo(30);
        make.right.mas_equalTo(self).offset(-100);
    }];
    [_buttonBuy mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.labelTitle.mas_bottom).offset(5);
        make.left.mas_equalTo(self.labelJianjie.mas_right).offset(5);
        make.height.mas_equalTo(30);
        make.width.mas_equalTo(60);
    }];
    [_labelHave mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.buttonBuy.mas_bottom).offset(5);
        make.left.mas_equalTo(self.labelJianjie.mas_right).offset(5);
        make.height.mas_equalTo(30);
        make.width.mas_equalTo(60);
    }];
    
}
@end
