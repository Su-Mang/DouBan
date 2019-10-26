//
//  DBBookViewUpTwo.m
//  Douban -ImitationDemo
//
//  Created by 岳靖翔 on 2019/10/17.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "DBBookViewUpTwo.h"
#import <Masonry.h>
@implementation DBBookViewUpTwo

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.buttonHave = [[UIButton alloc] init];
        [self addSubview:self.buttonHave];
        [self.buttonHave setTitle:@"影院热映" forState:UIControlStateNormal];
        [self.buttonHave setTitleColor:[UIColor colorWithRed:0.5098 green:0.50588 blue:0.5098 alpha:0.8] forState:UIControlStateNormal];
        [self.buttonHave setTitleColor:[UIColor colorWithRed:0.10196 green:0.094 blue:0.10196 alpha:0.9] forState:UIControlStateSelected];
        [self.buttonHave setFrame:CGRectMake(0, 0, 100, 50)];
        self.buttonHave.tag = 1;
        
        
        self.buttonWill = [[UIButton alloc] init];
        [self addSubview:self.buttonWill];
        [self.buttonWill setTitle:@"即将上映" forState:UIControlStateNormal];
        [self.buttonWill setTitleColor:[UIColor colorWithRed:0.5098 green:0.50588 blue:0.5098 alpha:0.8] forState:UIControlStateNormal];
        [self.buttonWill setTitleColor:[UIColor colorWithRed:0.10196 green:0.094 blue:0.10196 alpha:0.9] forState:UIControlStateSelected];
        [self.buttonWill setFrame:CGRectMake(100, 0, 100, 50)];
        [self.buttonHave addTarget:self action:@selector(change:) forControlEvents:UIControlEventTouchUpInside];
        [self.buttonWill addTarget:self action:@selector(change:) forControlEvents:UIControlEventTouchUpInside];
        self.buttonWill.tag = 2;
        [self.buttonWill titleRectForContentRect:CGRectMake(0, 0, 100, 50)];
        self.buttoniamgeHave = [[UIButton alloc] init];
        [self addSubview:self.buttoniamgeHave];
        [self.buttoniamgeHave setImage:[UIImage imageNamed:@"B6D0CB0F-AD87-4827-9A44-ABF62C248D13.png"] forState:UIControlStateNormal];
        [self.buttoniamgeHave setImage:[UIImage imageNamed:@"D9405BAB-2849-4622-90D5-B3190E56DCF1.png"] forState:UIControlStateSelected];
        [self.buttoniamgeHave setFrame:CGRectMake(0, 50, 100, 3)];
        
        self.buttoniamgeWill = [[UIButton alloc] init];
        [self addSubview:self.buttoniamgeWill];
        [self.buttoniamgeWill setImage:[UIImage imageNamed:@"B6D0CB0F-AD87-4827-9A44-ABF62C248D13.png"] forState:UIControlStateNormal];
        [self.buttoniamgeWill setImage:[UIImage imageNamed:@"D9405BAB-2849-4622-90D5-B3190E56DCF1.png"] forState:UIControlStateSelected];
        [self.buttoniamgeWill setFrame:CGRectMake(100, 50, 100, 3)];
        self.buttoniamgeHave.selected = YES;
        [self.buttoniamgeHave imageRectForContentRect:CGRectMake(0, 5, 80, 3)];
       
        self.buttonAll = [[UIButton alloc] init];
        [self addSubview:self.buttonAll];
        [self.buttonAll setTitle:@"全部" forState:UIControlStateNormal];
        [self.buttonAll setImage:[UIImage imageNamed:@"youjiantou-2.png"] forState:UIControlStateNormal];
        [self.buttonAll addTarget:self action:@selector(pageALL) forControlEvents:UIControlEventTouchUpInside];
        //[self.buttonAll imageRectForContentRect:CGRectMake(45, 10, 30, 20)];

        //[self.buttonAll  titleRectForContentRect:CGRectMake(0, 10, 45, 20)];
        [self.buttonAll  setTitleEdgeInsets:UIEdgeInsetsMake(0, -50, 0, 0)];
        [self.buttonAll.titleLabel setFont:[UIFont systemFontOfSize:13]];
        [self.buttonAll setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, -50)];
        [self.buttonAll setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [self.buttonAll mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.buttonHave);
            make.right.mas_equalTo(self.mas_right);
            make.height.mas_equalTo(40);
            make.left.mas_equalTo(self.buttonWill.mas_right).offset(100);
        }];
        self.scrollviewFlowAll = [[UIScrollView alloc] init];
        [self addSubview:self.scrollviewFlowAll];
        [self.scrollviewFlowAll setContentSize:CGSizeMake(self.frame.size.width*2, 0)];
        [self.scrollviewFlowAll mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.buttoniamgeHave.mas_bottom);
            make.width.mas_equalTo(self);
            make.height.mas_equalTo(400);
        }];
        

        self.buttonWiLLOne = [[DBBookViewButton alloc]init];
        [self.buttonWiLLOne creatButton:@"双子杀手" :@"457人想看" :@"10月20日" :@"" ];
        [self.buttonWiLLOne setFrame:CGRectMake(375, 10, 120, 190)];
        [self.scrollviewFlowAll addSubview:self.buttonWiLLOne];
        
        self.buttonWiLLTwo = [[DBBookViewButton alloc]init];
        [self.buttonWiLLTwo creatButton:@"双子杀手" :@"457人想看" :@"10月20日" :@"" ];
        [self.buttonWiLLTwo setFrame:CGRectMake(500, 10, 120, 190)];
        [self.scrollviewFlowAll addSubview:self.buttonWiLLTwo];
        
        self.buttonWiLLThree = [[DBBookViewButton alloc]init];
        [self.buttonWiLLThree creatButton:@"双子杀手" :@"457人想看" :@"10月20日" :@"" ];
        [self.buttonWiLLThree setFrame:CGRectMake(625, 10, 120, 190)];
        [self.scrollviewFlowAll addSubview:self.buttonWiLLThree];
        
        self.buttonWiLLFour = [[DBBookViewButton alloc]init];
        [self.buttonWiLLFour creatButton:@"双子杀手" :@"457人想看" :@"10月20日" :@"" ];
        [self.buttonWiLLFour setFrame:CGRectMake(375, 200, 120, 190)];
        [self.scrollviewFlowAll addSubview:self.buttonWiLLFour];
        
        self.buttonWiLLFive = [[DBBookViewButton alloc]init];
        [self.buttonWiLLFive creatButton:@"双子杀手" :@"457人想看" :@"10月20日" :@"" ];
        [self.buttonWiLLFive setFrame:CGRectMake(500, 200, 120, 190)];
        [self.scrollviewFlowAll addSubview:self.buttonWiLLFive];
        
        self.buttonWiLLSix = [[DBBookViewButton alloc]init];
        [self.buttonWiLLSix creatButton:@"双子杀手" :@"457人想看" :@"10月20日" :@"" ];
        [self.buttonWiLLSix setFrame:CGRectMake(625, 200, 120, 190)];
        [self.scrollviewFlowAll addSubview:self.buttonWiLLSix];
        
        
        self.buttonOne = [[DBBookViewButtonTwo alloc]init];
      
        [self.buttonOne creatButton:@"" :@"457人想看" :@"10月20日"];
        [self.buttonOne setFrame:CGRectMake(10, 10, 110, 190)];
        [self.scrollviewFlowAll addSubview:self.buttonOne];
        
        self.buttonTwo = [[DBBookViewButtonTwo alloc]init];
        [self.buttonTwo creatButton:@"双子杀手" :@"457人想看" :@"10月20日"];
        [self.buttonTwo setFrame:CGRectMake(135, 10, 110, 190)];
        [self.scrollviewFlowAll addSubview:self.buttonTwo];
        
        self.buttonThree = [[DBBookViewButtonTwo alloc]init];
        [self.buttonThree creatButton:@"双子杀手" :@"457人想看" :@"10月20日"];
        [self.buttonThree setFrame:CGRectMake(260, 10, 110, 190)];
        [self.scrollviewFlowAll addSubview:self.buttonThree];
        
        self.buttonFour = [[DBBookViewButtonTwo alloc]init];
        [self.buttonFour creatButton:@"双子杀手" :@"457人想看" :@"10月20日"];
        [self.buttonFour setFrame:CGRectMake(10, 200, 110, 190)];
        [self.scrollviewFlowAll addSubview:self.buttonFour];
        
        self.buttonFive = [[DBBookViewButtonTwo alloc]init];
        [self.buttonFive creatButton:@"双子杀手" :@"457人想看" :@"10月20日"];
        [self.buttonFive setFrame:CGRectMake(135, 200, 110, 190)];
        [self.scrollviewFlowAll addSubview:self.buttonFive];
        
        self.buttonSix = [[DBBookViewButtonTwo alloc]init];
        [self.buttonSix creatButton:@"双子杀手" :@"457人想看" :@"10月20日"];
        [self.buttonSix setFrame:CGRectMake(260, 200, 110, 190)];
        [self.scrollviewFlowAll addSubview:self.buttonSix];
       
          [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(relate) name:@"relate" object:nil];
     
    }
    return self;
}
#pragma mark - 点击全部
-(void)relate {
    ProductModel *productModelone = [[ProductModel alloc]init];
    productModelone = _pageModel.subjects[0];
    ProductModel *productModelTwo = [[ProductModel alloc]init];
    productModelTwo = _pageModel.subjects[1];
    ProductModel *productModelThree = [[ProductModel alloc]init];
    productModelThree = _pageModel.subjects[2];
    ProductModel *productModelFour = [[ProductModel alloc]init];
    productModelFour = _pageModel.subjects[3];
    ProductModel *productModelFive = [[ProductModel alloc]init];
    productModelFive = _pageModel.subjects[4];
    ProductModel *productModelSix = [[ProductModel alloc]init];
    productModelSix = _pageModel.subjects[5];
    NSLog(@"%@",productModelone.images.medium);
    dispatch_async(dispatch_get_main_queue(), ^{
        self.buttonOne.labelTitle.text = productModelone.title;
        NSString *urlString = [NSString stringWithFormat:@"%@", productModelone.images.medium];
        NSData *data = [NSData dataWithContentsOfURL:[NSURL  URLWithString:urlString]];
        UIImage *image = [UIImage imageWithData:data];
        [self.buttonOne.buttonUP setImage:image forState:UIControlStateNormal];
        
        self.buttonTwo.labelTitle.text = productModelTwo.title;
       urlString = [NSString stringWithFormat:@"%@", productModelTwo.images.medium];
       data = [NSData dataWithContentsOfURL:[NSURL  URLWithString:urlString]];
        image = [UIImage imageWithData:data];
        [self.buttonTwo.buttonUP setImage:image forState:UIControlStateNormal];
        
        self.buttonThree.labelTitle.text = productModelThree.title;
        urlString = [NSString stringWithFormat:@"%@", productModelThree.images.medium];
        data = [NSData dataWithContentsOfURL:[NSURL  URLWithString:urlString]];
        image = [UIImage imageWithData:data];
        [self.buttonThree.buttonUP setImage:image forState:UIControlStateNormal];
        
        self.buttonFour.labelTitle.text = productModelFour.title;
        urlString = [NSString stringWithFormat:@"%@", productModelFour.images.medium];
        data = [NSData dataWithContentsOfURL:[NSURL  URLWithString:urlString]];
        image = [UIImage imageWithData:data];
        [self.buttonFour.buttonUP setImage:image forState:UIControlStateNormal];
        
        self.buttonFive.labelTitle.text = productModelFive.title;
        urlString = [NSString stringWithFormat:@"%@", productModelFive.images.medium];
        data = [NSData dataWithContentsOfURL:[NSURL  URLWithString:urlString]];
        image = [UIImage imageWithData:data];
        [self.buttonFive.buttonUP setImage:image forState:UIControlStateNormal];
        
        self.buttonSix.labelTitle.text = productModelSix.title;
        urlString = [NSString stringWithFormat:@"%@", productModelSix.images.medium];
        data = [NSData dataWithContentsOfURL:[NSURL  URLWithString:urlString]];
        image = [UIImage imageWithData:data];
        [self.buttonSix.buttonUP setImage:image forState:UIControlStateNormal];
    
    });
    
  
}

-(void) pageALL {
    
    NSNotification *notic = [NSNotification notificationWithName:@"PageALL" object:self userInfo:nil];
    [[NSNotificationCenter defaultCenter]postNotification:notic];
}
-(void)change:(UIButton*)button{
    if(button.tag == 1) {
        self.buttonHave.selected = YES;
        self.buttonWill.selected = NO;
        self.buttoniamgeHave.selected = YES;
        self.buttoniamgeWill.selected = NO;
          [self.scrollviewFlowAll setContentOffset:CGPointMake(0, 0) animated:YES];
    }
    else{
        self.buttonWill.selected = YES;
        self.buttonHave.selected = NO;
        self.buttoniamgeWill.selected = YES;
        self.buttoniamgeHave.selected = NO;
        [self.scrollviewFlowAll setContentOffset:CGPointMake(375, 0) animated:YES];
    }
}
@end
