//
//  DBBookViewUp.m
//  Douban -ImitationDemo
//
//  Created by 岳靖翔 on 2019/10/16.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "DBBookViewUp.h"

@implementation DBBookViewUp

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.buttonOne = [[DBVIewForBookButton alloc] init];
        [self addSubview:self.buttonOne];
        [self.buttonOne creatView:@"电影"];
        self.buttonOne.buttonUp.selected = YES;
        self.buttonOne.buttondown.selected = YES;
        self.buttonOne.tag = 1;
        //self.buttonOne.buttonUp.backgroundColor = [UIColor redColor];
        [self.buttonOne.buttonUp addTarget:self action:@selector(add) forControlEvents:UIControlEventTouchUpInside];
    
        
        self.buttonTwo = [[DBVIewForBookButton alloc] init];
        [self addSubview:self.buttonTwo];
        [self.buttonTwo creatView:@"电视"];
        self.buttonTwo.tag = 2;
        
        self.buttonThree = [[DBVIewForBookButton alloc] init];
        [self addSubview:self.buttonThree];
        [self.buttonThree creatView:@"读书"];
        self.buttonThree.tag = 3;
        
        
        self.buttonFour = [[DBVIewForBookButton alloc] init];
        [self addSubview:self.buttonFour];
        [self.buttonFour creatView:@"原创小说"];
        self.buttonFour.tag = 4;
        
        
        self.buttonFive = [[DBVIewForBookButton alloc] init];
        [self addSubview:self.buttonFive];
        [self.buttonFive creatView:@"音乐"];
        self.buttonFive.tag = 5;
        
        
        self.buttonSix = [[DBVIewForBookButton alloc] init];
        [self addSubview:self.buttonSix];
        [self.buttonSix creatView:@"同城"];
        self.buttonSix.tag = 6;
        
        
        for (DBVIewForBookButton * button in [self subviews] ) {
            if([button isKindOfClass:[DBVIewForBookButton class]]) {
                [button.buttonUp addTarget:self action:@selector(change:) forControlEvents:UIControlEventTouchUpInside];
                [button.buttondown addTarget:self action:@selector(change:) forControlEvents:UIControlEventTouchUpInside];
            }
        }
        
        
    }
    return self;
}

#pragma mark - 布局
- (void)layoutSubviews {
    [super layoutSubviews];
    
    [self.buttonOne.buttonUp setFrame:CGRectMake(15, 0, 40, 30)];
    [self.buttonOne.buttondown setFrame:CGRectMake(15, 35, 40, 3)];
    
    [self.buttonTwo.buttonUp setFrame:CGRectMake(60, 0, 40, 30)];
    [self.buttonTwo.buttondown setFrame:CGRectMake(60, 35, 40, 3)];
    
    [self.buttonThree.buttonUp setFrame:CGRectMake(115, 0, 40, 30)];
    [self.buttonThree.buttondown setFrame:CGRectMake(115, 35, 40, 3)];
    
    [self.buttonFour.buttonUp setFrame:CGRectMake(170, 0, 80, 30)];
    [self.buttonFour.buttondown setFrame:CGRectMake(170, 35, 80, 3)];
    
    [self.buttonFive.buttonUp setFrame:CGRectMake(265, 0, 40, 30)];
    [self.buttonFive.buttondown setFrame:CGRectMake(265, 35, 40, 3)];
    
    [self.buttonSix.buttonUp setFrame:CGRectMake(320, 0, 40, 30)];
    [self.buttonSix.buttondown setFrame:CGRectMake(320, 35, 40, 3)];
    
}

#pragma mark - 添加点击事件
-(void)change :(DBVIewForBookButton *) button {
    for (DBVIewForBookButton * buttonALL in [self subviews] ) {
                if([buttonALL isKindOfClass:[DBVIewForBookButton class]]) {
                    buttonALL.buttonUp.selected = NO;
                    buttonALL.buttondown.selected = NO;
                }
        button.buttonUp.selected = YES;
        button.buttondown.selected =YES;
        }
}

-(void)add {
    NSLog(@"123");
}
@end
