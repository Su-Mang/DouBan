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
    if (indexPath.section==0) {
        return 150;
    }
    else
        return  150;
    
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
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  UITableViewCell *cell = [[UITableViewCell alloc]init];
    if(indexPath.section%2==0)
    {
          UITableViewCell *cell = [[UITableViewCell alloc]init];
        return cell;
        }
    else{
        static NSString* id = @"1";
       
        }
        return cell;
    }







#pragma mark -界面布局
- (void)layoutSubviews {
    [super layoutSubviews];
    
    [self.backView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.top.width.equalTo(self);
        make.height.mas_equalTo(100);
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
        make.top.equalTo(self.searchBar.mas_bottom).offset(6);
        make.height.mas_equalTo(43);
        make.left.right.equalTo(self);
    }];
//    [self.viewFirst mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.mas_equalTo(self.backView.mas_bottom);
//        make.width.mas_equalTo(self);
//        make.height.mas_equalTo(60);
//    }];
    [self.viewFirst setFrame:CGRectMake(0, 311, 375,500)];
    [self.tableviewOne mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.backView.mas_bottom);
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
