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
        [self.buttonOne creatView:@"电影"];
        [self addSubview:self.buttonOne];
        
        self.buttonOne.buttonUp.selected = YES;
        self.buttonOne.buttondown.selected = YES;
        self.buttonOne.buttonUp.tag = 1;
        [self.buttonOne.buttonUp addTarget:self action:@selector(change:) forControlEvents:UIControlEventTouchUpInside];
      //  [self.buttonOne.buttondown addTarget:self action:@selector(change:) forControlEvents:UIControlEventTouchUpInside];
        
        self.buttonTwo = [[DBVIewForBookButton alloc] init];
        [self.buttonTwo creatView:@"电视"];
        [self addSubview:self.buttonTwo];
        self.buttonTwo.buttonUp.tag = 2;
        [self.buttonTwo.buttonUp addTarget:self action:@selector(change:) forControlEvents:UIControlEventTouchUpInside];
       // [self.buttonTwo.buttondown addTarget:self action:@selector(change:) forControlEvents:UIControlEventTouchUpInside];
        
        self.buttonThree = [[DBVIewForBookButton alloc] init];
        [self addSubview:self.buttonThree];
        [self.buttonThree creatView:@"读书"];
        self.buttonThree.buttonUp.tag = 3;
        [self.buttonThree.buttonUp addTarget:self action:@selector(change:) forControlEvents:UIControlEventTouchUpInside];
      //  [self.buttonThree.buttondown addTarget:self action:@selector(change:) forControlEvents:UIControlEventTouchUpInside];
        
        
        self.buttonFour = [[DBVIewForBookButton alloc] init];
        [self addSubview:self.buttonFour];
        [self.buttonFour creatView:@"原创小说"];
        self.buttonFour.buttonUp.tag = 4;
        [self.buttonFour.buttonUp addTarget:self action:@selector(change:) forControlEvents:UIControlEventTouchUpInside];
      //  [self.buttonFour.buttondown addTarget:self action:@selector(change:) forControlEvents:UIControlEventTouchUpInside];
        
        
        self.buttonFive = [[DBVIewForBookButton alloc] init];
        [self addSubview:self.buttonFive];
        [self.buttonFive creatView:@"音乐"];
        self.buttonFive.buttonUp.tag = 5;
        [self.buttonFive.buttonUp addTarget:self action:@selector(change:) forControlEvents:UIControlEventTouchUpInside];
       // [self.buttonFive.buttondown addTarget:self action:@selector(change:) forControlEvents:UIControlEventTouchUpInside];
        
        
        
        self.buttonSix = [[DBVIewForBookButton alloc] init];
        [self addSubview:self.buttonSix];
        [self.buttonSix creatView:@"同城"];
        self.buttonSix.buttonUp.tag = 6;
        [self.buttonSix.buttonUp addTarget:self action:@selector(change:) forControlEvents:UIControlEventTouchUpInside];
       // [self.buttonSix.buttondown addTarget:self action:@selector(change:) forControlEvents:UIControlEventTouchUpInside];
        
    }
    return self;
}

#pragma mark - 布局
- (void)layoutSubviews {
    [super layoutSubviews];
    
    [self.buttonOne setFrame:CGRectMake(15, 0, 40, 38)];
    [self.buttonOne.buttonUp setFrame:CGRectMake(10, 0, 40, 30)];
    [self.buttonOne.buttondown setFrame:CGRectMake(10, 35, 40, 3)];
    
    [self.buttonTwo setFrame:CGRectMake(65, 0, 40, 38)];
    [self.buttonTwo.buttonUp setFrame:CGRectMake(10, 0, 40, 30)];
    [self.buttonTwo.buttondown setFrame:CGRectMake(10, 35, 40, 3)];
    
    [self.buttonThree setFrame:CGRectMake(115, 0, 45, 38)];
    [self.buttonThree.buttonUp setFrame:CGRectMake(10, 0, 40, 30)];
    [self.buttonThree.buttondown setFrame:CGRectMake(10, 35, 40, 3)];
    
    [self.buttonFour setFrame:CGRectMake(160, 0, 90, 38)];
    [self.buttonFour.buttonUp setFrame:CGRectMake(10, 0, 80, 30)];
    [self.buttonFour.buttondown setFrame:CGRectMake(10, 35, 80, 3)];
    
    [self.buttonFive setFrame:CGRectMake(255, 0, 50, 38)];
    [self.buttonFive.buttonUp setFrame:CGRectMake(10, 0, 40, 30)];
    [self.buttonFive.buttondown setFrame:CGRectMake(10, 35, 40, 3)];
    
    [self.buttonSix setFrame:CGRectMake(305, 0, 50, 38)];
    [self.buttonSix.buttonUp setFrame:CGRectMake(10, 0, 40, 30)];
    [self.buttonSix.buttondown setFrame:CGRectMake(10, 35, 40, 3)];
    
}

//#pragma mark - 添加点击事件
-(void)change:(UIButton *) button {
        if (button.tag == 1) {
            _buttonOne.buttonUp.selected = YES;
            _buttonOne.buttondown.selected = YES;
            _buttonTwo.buttonUp.selected = NO;
            _buttonTwo.buttondown.selected =NO;
            _buttonThree.buttonUp.selected = NO;
            _buttonThree.buttondown.selected =NO;
            _buttonFour.buttonUp.selected = NO;
            _buttonFour.buttondown.selected =NO;
            _buttonFive.buttonUp.selected = NO;
            _buttonFive.buttondown.selected =NO;
            _buttonSix.buttonUp.selected = NO;
            _buttonSix.buttondown.selected =NO;
        }
        if (button.tag == 2) {
            _buttonTwo.buttonUp.selected = YES;
            _buttonTwo.buttondown.selected = YES;
            _buttonOne.buttondown.selected = NO;
            _buttonOne.buttonUp.selected = NO;
            _buttonThree.buttonUp.selected = NO;
            _buttonThree.buttondown.selected = NO;
            _buttonFour.buttonUp.selected = NO;
            _buttonFour.buttondown.selected = NO;
            _buttonFive.buttonUp.selected = NO;
            _buttonFive.buttondown.selected = NO;
            _buttonSix.buttonUp.selected = NO;
            _buttonSix.buttondown.selected = NO;
        }
        if (button.tag == 3) {
            _buttonThree.buttondown.selected = YES;
            _buttonThree.buttondown.selected = YES;
            _buttonOne.buttonUp.selected = NO;
            _buttonOne.buttondown.selected = NO;
            _buttonTwo.buttonUp.selected = NO;
            _buttonTwo.buttondown.selected =NO;
            _buttonFour.buttonUp.selected = NO;
            _buttonFour.buttondown.selected =NO;
            _buttonFive.buttonUp.selected = NO;
            _buttonFive.buttondown.selected =NO;
            _buttonSix.buttonUp.selected = NO;
            _buttonSix.buttondown.selected =NO;
        }
        if (button.tag == 4) {
            _buttonFour.buttonUp.selected = YES;
            _buttonFour.buttondown.selected = YES;
            _buttonOne.buttonUp.selected = NO;
            _buttonOne.buttondown.selected = NO;
            _buttonTwo.buttonUp.selected = NO;
            _buttonTwo.buttondown.selected =NO;
            _buttonThree.buttonUp.selected = NO;
            _buttonThree.buttondown.selected =NO;
            _buttonFive.buttonUp.selected = NO;
            _buttonFive.buttondown.selected =NO;
            _buttonSix.buttonUp.selected = NO;
            _buttonSix.buttondown.selected =NO;
            
        }
        if (button.tag == 5) {
            _buttonFive.buttonUp.selected = YES;
            _buttonFive.buttondown.selected = YES;
            _buttonOne.buttonUp.selected = NO;
            _buttonOne.buttondown.selected = NO;
            _buttonTwo.buttonUp.selected = NO;
            _buttonTwo.buttondown.selected =NO;
            _buttonFour.buttonUp.selected = NO;
            _buttonFour.buttondown.selected =NO;
            _buttonThree.buttonUp.selected = NO;
            _buttonThree.buttondown.selected =NO;
            _buttonSix.buttonUp.selected = NO;
            _buttonSix.buttondown.selected =NO;
        }
        if (button.tag == 6) {
            _buttonSix.buttonUp.selected = YES;
            _buttonSix.buttondown.selected = YES;
            _buttonOne.buttonUp.selected = NO;
            _buttonOne.buttondown.selected = NO;
            _buttonTwo.buttonUp.selected = NO;
            _buttonTwo.buttondown.selected =NO;
            _buttonFour.buttonUp.selected = NO;
            _buttonFour.buttondown.selected =NO;
            _buttonFive.buttonUp.selected = NO;
            _buttonFive.buttondown.selected =NO;
            _buttonThree.buttonUp.selected = NO;
            _buttonThree.buttondown.selected =NO;
        }
}

- (void)add {
    NSLog(@"123");
}
@end
