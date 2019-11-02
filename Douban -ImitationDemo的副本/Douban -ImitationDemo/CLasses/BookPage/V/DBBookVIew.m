//
//  DBBookVIew.m
//  Douban -ImitationDemo
//
//  Created by 岳靖翔 on 2019/10/15.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "DBBookVIew.h"
#import <Masonry.h>
@interface DBBookVIew ()<UITableViewDataSource,UITableViewDelegate>

@end
@implementation DBBookVIew

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        
        self.backView = [[UIView alloc] init];
        [self addSubview:self.backView];
        [self.backView setBackgroundColor:[UIColor whiteColor]];
        
        self.searchBar = [[UITextField alloc] init];
        [self addSubview:self.searchBar];
        self.searchBar.placeholder = @" 从你的全世界路过 ";
        [self.searchBar setFont:[UIFont systemFontOfSize:12]];
        UIImageView *viewPicture = [[UIImageView alloc] init];
        [viewPicture setImage:[UIImage imageNamed:@"weibiaoti--2.png"]];
        [viewPicture setFrame:CGRectMake(20, 10, 20, 20)];
        self.searchBar.leftView = viewPicture;
        self.searchBar.leftViewMode = UITextFieldViewModeAlways ;
        UIImageView *viewPictureRight = [[UIImageView alloc] init];
        [viewPictureRight setImage:[UIImage imageNamed:@"saoyisao.png"]];
        [viewPictureRight setFrame:CGRectMake(25, 10, 20, 20)];
        self.searchBar.rightView = viewPictureRight;
        self.searchBar.rightViewMode = UITextFieldViewModeAlways ;
        self.searchBar.layer.cornerRadius = 13;
        self.searchBar.backgroundColor = [UIColor colorWithWhite:0.8 alpha:0.8];
        
        self.buttonRight = [[UIButton alloc]init];
        [self.backView addSubview:self.buttonRight];
        [self.buttonRight setImage:[UIImage imageNamed:@"duanxin.png"] forState:UIControlStateNormal];
        [self.buttonRight addTarget:self action:@selector(add) forControlEvents:UIControlEventTouchUpInside];
        
        self.bookButtonOne = [[DBBookViewUp alloc] init];
        [self addSubview:self.bookButtonOne];
       
        self.viewFirst = [[DBBookViewUpTwo alloc] init];
       // [self addSubview:self.viewFirst];
        
        self.bookButtonOne.layer.masksToBounds = YES;

        
        self.tableviewOne = [[UITableView alloc] init];
        self.tableviewOne.tableHeaderView = self.viewFirst;
        self.tableviewOne.delegate = self;
        self.tableviewOne.dataSource = self;
        [self addSubview:self.tableviewOne];
      

    
        
//        self.scrollView = [[UIScrollView alloc] init];
//        [self addSubview:self.scrollView];
        
      
        
      
        
    }
    return self;
}

#pragma mark -tableViewOne布局
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 10;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 150;
}
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    return nil;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 1;
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
  UITableViewCell *cell = [[UITableViewCell alloc]init];
    if(indexPath.section == 0) {
        if (self.viewFirst.scrollviewFlowAll.contentOffset.x == 0) {
            static NSString * ID = @"1";
            UITableViewCell *oneCell =  [tableView dequeueReusableCellWithIdentifier:ID];
            if(oneCell == nil) {
               oneCell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
                UIImageView * imageView = [[UIImageView alloc] initWithFrame:CGRectMake(25, 0, 325, 100)];
                 [imageView setImage:[UIImage imageNamed:@"WeChat3fb6b469ba87d0faa182d9411097f508.png"]];
                [oneCell.contentView addSubview:imageView];
    
            }
             return oneCell;
        }
        if (self.viewFirst.scrollviewFlowAll.contentOffset.x == 375) {
        NSLog(@"self.viewFirst.scrollviewFlowAll.contentOffset.x：%f",self.viewFirst.scrollviewFlowAll.contentOffset.x);
            static NSString* ID2 = @"2";
            UITableViewCell *Cell = [tableView dequeueReusableCellWithIdentifier:ID2];
            if(Cell == nil) {
               Cell =  [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID2];
                NSLog(@"Cell:%@", Cell);
                UIImageView * imageView = [[UIImageView alloc] initWithFrame:CGRectMake(25, 30, 325, 100)];
                [imageView setImage:[UIImage imageNamed:@"WeChat3fb6b469ba87d0faa182d9411097f508.png"]];
                [Cell.contentView addSubview:imageView];
//
            }
            
            return Cell;
        }

       
        
       
}
    if(indexPath.section>0)
    {
          UITableViewCell *cell = [[UITableViewCell alloc]init];
        return cell;
        }
    else{
        static NSString* id2 = @"3";
       
        }
        return cell;
    }
    


//if (self.viewFirst.scrollviewFlowAll.contentOffset.x == 375) {
//    static NSString * ID = @"2";
//    UITableViewCell *oneCell =  [tableView dequeueReusableCellWithIdentifier:ID];
//    if(oneCell == nil) {
//        oneCell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];

//        [oneCell.contentView addSubview:imageView];
//    }
//    return oneCell;
//}

#pragma mark -界面布局
- (void)layoutSubviews {
    [super layoutSubviews];
    
    [self.backView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.top.width.equalTo(self);
        make.height.mas_equalTo(50);
    }];
    
    [self.searchBar mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(self.backView.mas_top).offset(20);
        make.width.mas_equalTo(self.frame.size.width/3*2+10);
        make.height.mas_equalTo(30);
        make.left.mas_equalTo(20);
    }];
    
    [self.buttonRight mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.backView.mas_top).offset(20);
        make.width.mas_equalTo(30);
        make.height.mas_equalTo(30);
        make.right.mas_equalTo(-30);
    }];
    
    [self.bookButtonOne mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.backView.mas_bottom).offset(6);
        make.height.mas_equalTo(43);
        make.left.right.equalTo(self);
    }];
//    [self.viewFirst mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.mas_equalTo(self.backView.mas_bottom);
//        make.width.mas_equalTo(self);
//        make.height.mas_equalTo(60);
//    }];
    [self.viewFirst setFrame:CGRectMake(0, 311, 375,460)];
    [self.tableviewOne mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.bookButtonOne.mas_bottom);
        make.bottom.left.right.mas_equalTo(self);
    }];
//    [self.scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.mas_equalTo(self.viewFirst.mas_bottom);
//        make.width.mas_equalTo(self.frame.size.width*2);
//        make.height.mas_equalTo(100);
//
//    }];
    //[self.bookButtonOne setBackgroundColor:[UIColor blueColor]];
//    self.bookButtonOne.userInteractionEnabled = YES;
//    self.bookButtonOne.buttonOne.userInteractionEnabled = YES;
//    self.bookButtonOne.buttonOne.buttonUp.userInteractionEnabled = YES;
    
}

@end
