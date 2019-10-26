//
//  DBVIewForBookButton.m
//  Douban -ImitationDemo
//
//  Created by 岳靖翔 on 2019/10/16.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "DBVIewForBookButton.h"

@implementation DBVIewForBookButton

- (void)creatView:(NSString *)Name {
    self.buttonUp = [[UIButton alloc] init];
    [self addSubview:self.buttonUp];
    [self.buttonUp setTitle:Name forState:UIControlStateNormal];
    [self.buttonUp setTitle:Name forState:UIControlStateSelected];
    [self.buttonUp setTitleColor:[UIColor colorWithRed:0.5098 green:0.50588 blue:0.5098 alpha:0.8] forState:UIControlStateNormal];
    [self.buttonUp setTitleColor:[UIColor colorWithRed:0.10196 green:0.094 blue:0.10196 alpha:0.9] forState:UIControlStateSelected];
    [self.buttonUp.titleLabel setFont:[UIFont systemFontOfSize:14]];
    [self.buttonUp addTarget:self action:@selector(add) forControlEvents:UIControlEventTouchUpInside];
    
    self.buttondown = [[UIButton alloc]init];
    [self addSubview:self.buttondown];
    [self.buttondown setImage:[UIImage imageNamed:@"B6D0CB0F-AD87-4827-9A44-ABF62C248D13.png"] forState:UIControlStateNormal];
    [self.buttondown setImage:[UIImage imageNamed:@"F860B514-1921-4732-9624-0BA8640A556E.png"] forState:UIControlStateSelected];
   
    
}
-(void)add{
    NSLog(@"123");
}

@end
