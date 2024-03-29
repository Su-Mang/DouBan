//
//  DBBookViewButton.m
//  Douban -ImitationDemo
//
//  Created by 岳靖翔 on 2019/10/16.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "DBBookViewButton.h"
#import <Masonry.h>
@implementation DBBookViewButton

- (void)creatButton:(NSString *)textNameand :(NSString *)textWantand :(NSString *)textData :(NSString *)uiimageName {

    self.buttonSmall = [[UIButton alloc] init];
    [self addSubview:self.buttonSmall];
    [self.buttonSmall setImage:[UIImage imageNamed:@"jiaguanzhuhuati.png"] forState:UIControlStateNormal];
    [self.buttonSmall setImage:[UIImage imageNamed:@"right.png"] forState:UIControlStateSelected];
    [self.buttonSmall addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    self.buttonSmall.alpha = 0.5;

    self.buttonUP = [[UIButton alloc] init];
    [self addSubview:self.buttonUP];
    [self.buttonUP setImage:[UIImage imageNamed:uiimageName] forState:UIControlStateNormal];
    [self.buttonUP addSubview:self.buttonSmall];
  
    
    self.labelTitle = [[UILabel alloc]init];
    [self addSubview:self.labelTitle];
    self.labelTitle.text = textNameand;
    [self.labelTitle setTextColor:[UIColor blackColor]];
    [self.labelTitle setFont:[UIFont systemFontOfSize:12]];
    
    self.labelWant = [[UILabel alloc]init];
    [self addSubview:self.labelWant];
    [self.labelWant setTextColor:[UIColor grayColor]];
    self.labelWant.text = textWantand;
    [self.labelWant setFont:[UIFont systemFontOfSize:10]];
    
    self.labelData = [[UILabel alloc]init];
    [self addSubview:self.labelData];
    [self.labelData setText:textData];
    [self.labelData setTextColor:[UIColor redColor]];
    [self.labelData setFont:[UIFont systemFontOfSize:9]];
    self.labelData.layer.borderColor = [[UIColor redColor]CGColor];
    self.labelData.layer.borderWidth = 0.5f;
    //self.labelData.backgroundColor = [[UIColor whiteColor];
                            
    
}
- (void)layoutSubviews {
    [super layoutSubviews];
   
    [self.buttonUP mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self);
        make.left.mas_equalTo(self);
        make.width.mas_equalTo(self).offset(-10);
        make.height.mas_equalTo(self).offset(-50);
    }];
    [self.buttonSmall mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.buttonUP);
        make.width.mas_equalTo(30);
        make.height.mas_offset(30);
    }];
   
    [self.labelTitle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.buttonUP.mas_bottom).offset(5);
        make.left.mas_equalTo(self).offset(5);
        make.width.mas_equalTo(self).offset(-5);;
        make.height.mas_equalTo(15);
    }];
    [self.labelWant mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.labelTitle.mas_bottom);
        make.left.mas_equalTo(self).offset(5);
        make.width.mas_equalTo(self);
        make.height.mas_equalTo(10);
    }];
    [self.labelData mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.labelWant.mas_bottom).offset(5);
        make.left.mas_equalTo(self).offset(5);
        make.width.mas_equalTo(45);
        make.height.mas_equalTo(13);
    }];
}
    
    

-(void)click : (UIButton*) button {
    button.selected = !button.selected;
    if (button.selected) {
        
        
        NSNotification *notic = [NSNotification notificationWithName:@"send" object:self userInfo:@{@"input":@"1"}];
        [[NSNotificationCenter defaultCenter]postNotification:notic];
    }
    else{
        NSNotification *notic = [NSNotification notificationWithName:@"send" object:self userInfo:@{@"input":@"2"}];
        [[NSNotificationCenter defaultCenter]postNotification:notic];
    }
    
    
}


@end
