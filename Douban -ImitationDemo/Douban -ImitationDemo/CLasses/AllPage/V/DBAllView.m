//
//  DBAllView.m
//  Douban -ImitationDemo
//
//  Created by 岳靖翔 on 2019/10/19.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "DBAllView.h"
#import <Masonry.h>
@interface  DBAllView ()<UITableViewDataSource,UITableViewDelegate>
@end
@implementation DBAllView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.DBAllViewNav = [[DBAllViewNav alloc] init];
        [self addSubview:self.DBAllViewNav];
        
        self.scrollViewAllFlow = [[UIScrollView alloc] init];
        [self addSubview:self.scrollViewAllFlow];
        [_scrollViewAllFlow setContentSize:CGSizeMake(self.frame.size.width*3, 0)];
        self.scrollViewAllFlow.contentSize =CGSizeMake(self.frame.size.width*3, 0);
        _scrollViewAllFlow.pagingEnabled = YES;
       
        self.tableViewOne = [[UITableView alloc]init];
        [self.tableViewOne setFrame:CGRectMake(0, 0, 375, 552)];
        self.tableViewOne.tag = 1;
        [self.scrollViewAllFlow addSubview:self.tableViewOne];
        _tableViewOne.delegate = self;
        _tableViewOne.dataSource = self;
        
        self.tableViewTwo = [[UITableView alloc]init];
        [self.tableViewTwo setFrame:CGRectMake(375, 0, 375, 552)];
        self.tableViewTwo.tag = 2;
        [self.scrollViewAllFlow addSubview:self.tableViewTwo];
        _tableViewTwo.delegate = self;
        _tableViewTwo.dataSource = self;
        
        self.tableViewThree = [[UITableView alloc]init];
        [self.tableViewThree setFrame:CGRectMake(750, 0, 375, 552)];
        self.tableViewThree.tag = 3;
        [self.scrollViewAllFlow addSubview:self.tableViewThree];
        _tableViewThree.delegate = self;
        _tableViewThree.dataSource = self;
       
    }
    return self;
}
- (void)layoutSubviews {
    [super layoutSubviews];
    [self.DBAllViewNav mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.mas_equalTo(self);
        make.height.mas_equalTo(115);
    }];
    [_scrollViewAllFlow mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.DBAllViewNav.mas_bottom);
        make.left.right.bottom.mas_equalTo(self);
        
    }];
    _scrollViewAllFlow.contentSize = CGSizeMake(self.frame.size.width*3, 0);
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
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
   UITableViewCell *cell = [[UITableViewCell alloc] init];
    if(tableView.tag == 1) {
        static NSString* id = @"1";
        DBAllTableViewCellOne * tableViewCellOne = [tableView dequeueReusableCellWithIdentifier:id];
        if(tableViewCellOne == nil) {
            tableViewCellOne = [[DBAllTableViewCellOne alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:id];
            tableViewCellOne.labelTitle.text = @"双子杀手";
            tableViewCellOne.labelJianjie.text = @"2019/美国。中国大陆/ 剧情 动作 科幻/李安/ 123123";
            tableViewCellOne.labelHave.text = @"6.0万人看过";
            [tableViewCellOne.starView initWithFrame:CGRectMake(100, 35, 100, 10) :7];
            
            
            
        }
        return tableViewCellOne;
    }
    return cell;
}






@end
