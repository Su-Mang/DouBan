//
//  BookView.m
//  Dou-ban-make
//
//  Created by 岳靖翔 on 2019/10/13.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "BookView.h"

@implementation BookView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backView = [[UIView alloc]init];
        self.backgroundColor = [UIColor whiteColor];
        
        self.searchBar = [[UITextField alloc]init];
        [self addSubview:self.searchBar];
        self.searchBar.placeholder = @"  豆瓣app";
        
        self.oneButton = [[UIButton alloc]init];
        self.twoButton = [[UIButton alloc]init];
        self.threeButton = [[UIButton alloc]init];
        self.fourButton = [[UIButton alloc]init];
        self.fiveButton = [[UIButton alloc]init];
        self.sixButton = [[UIButton alloc]init];
        
        
        
    }
    return self;
}

@end
