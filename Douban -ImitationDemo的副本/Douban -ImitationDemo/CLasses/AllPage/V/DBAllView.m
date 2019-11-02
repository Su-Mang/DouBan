//
//  DBAllView.m
//  Douban -ImitationDemo
//
//  Created by 岳靖翔 on 2019/10/19.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "DBAllView.h"
#import <Masonry.h>
#import "DBAllHaveModel.h"
@interface  DBAllView ()<UITableViewDataSource,UITableViewDelegate,UIScrollViewDelegate>
@end
@implementation DBAllView

- (instancetype)init
{
    self = [super init];
    if (self) {
        _a = 10;
        self.DBAllViewNav = [[DBAllViewNav alloc] init];
        [self addSubview:self.DBAllViewNav];
        
        self.scrollViewAllFlow = [[UIScrollView alloc] init];
        [self addSubview:self.scrollViewAllFlow];
        [_scrollViewAllFlow setContentSize:CGSizeMake(self.frame.size.width*3, 0)];
        self.scrollViewAllFlow.contentSize =CGSizeMake(self.frame.size.width*3, 0);
        _scrollViewAllFlow.pagingEnabled = YES;
        _scrollViewAllFlow.delegate = self;
       
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
        [self.DBAllViewNav.buttonOne addTarget:self action:@selector(removeOne) forControlEvents:UIControlEventTouchUpInside];
        [self.DBAllViewNav.buttonTwo addTarget:self action:@selector(removeTwo) forControlEvents:UIControlEventTouchUpInside];
        [self.DBAllViewNav.buttonThree addTarget:self action:@selector(removeThree) forControlEvents:UIControlEventTouchUpInside];
       
    }
    return self;
}
-(void)removeOne{
    self.scrollViewAllFlow.contentOffset = CGPointMake(0, 0) ;
}
-(void)removeTwo{
    self.scrollViewAllFlow.contentOffset = CGPointMake(375, 0) ;
}
-(void)removeThree{
    self.scrollViewAllFlow.contentOffset = CGPointMake(750, 0) ;
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


- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    if(scrollView.contentOffset.x==0) {
        self.DBAllViewNav.buttonOne.selected = YES;
        self.DBAllViewNav.buttonOneImage.selected = YES;
        self.DBAllViewNav.buttonTwo.selected = NO;
        self.DBAllViewNav.buttonTwoImage.selected = NO;
        self.DBAllViewNav.buttonThree.selected = NO;
        self.DBAllViewNav.buttonThreeImage.selected = NO;
    }
    if(scrollView.contentOffset.x==375) {
        self.DBAllViewNav.buttonOne.selected = NO;
        self.DBAllViewNav.buttonOneImage.selected = NO;
        self.DBAllViewNav.buttonTwo.selected =YES;
        self.DBAllViewNav.buttonTwoImage.selected = YES;
        self.DBAllViewNav.buttonThree.selected = NO;
        self.DBAllViewNav.buttonThreeImage.selected = NO;
    }
    if(scrollView.contentOffset.x ==750) {
        self.DBAllViewNav.buttonOne.selected = NO;
        self.DBAllViewNav.buttonOneImage.selected = NO;
        self.DBAllViewNav.buttonTwo.selected = NO;
        self.DBAllViewNav.buttonTwoImage.selected = NO;
        self.DBAllViewNav.buttonThree.selected = YES;
        self.DBAllViewNav.buttonThreeImage.selected = YES;
    }
  
    
}
#pragma mark -tableViewOne布局
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return _dataArray.count;
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
   UITableViewCell *cell = [[UITableViewCell alloc] init];
    if(tableView.tag == 1) {
        static NSString* id = @"1";
        DBAllHaveModel * haveModel = [[DBAllHaveModel alloc] init];
        haveModel = _dataArray[indexPath.section];
        DBAllTableViewCellOne * tableViewCellOne = [tableView dequeueReusableCellWithIdentifier:id];
        if(tableViewCellOne == nil) {
            tableViewCellOne = [[DBAllTableViewCellOne alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:id];
           [tableViewCellOne.starView creatImage:haveModel.starStr :CGRectMake(0, 0, 105, 20) ];
            NSLog(@"aaa%ld",(long)haveModel.starStr);
            [ tableViewCellOne.starView changeImage:haveModel.starStr :tableViewCellOne.starView ];
           
    
        }
      
        if(haveModel.starStr == 0){
            [tableViewCellOne.buttonBuy setTitle:@"预售" forState:UIControlStateNormal];
            tableViewCellOne.buttonBuy.layer.borderColor = [[UIColor yellowColor]CGColor];
            tableViewCellOne.buttonBuy.layer.borderWidth = 0.5f;
            [tableViewCellOne.buttonBuy setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
        }else{
            [tableViewCellOne.buttonBuy setTitle:@"购票" forState:UIControlStateNormal];
            tableViewCellOne.buttonBuy.layer.borderColor = [[UIColor redColor]CGColor];
            tableViewCellOne.buttonBuy.layer.borderWidth = 0.5f;
            [tableViewCellOne.buttonBuy setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        }
            tableViewCellOne.labelTitle.text = haveModel.nameStr;

            NSString*  urlString = [NSString stringWithFormat:@"%@",haveModel.imageStr];
            NSData*   data = [NSData dataWithContentsOfURL:[NSURL  URLWithString:urlString]];
            UIImage* image = [UIImage imageWithData:data];
            [tableViewCellOne.imagePic setImage:image];
            tableViewCellOne.labelJianjie.text = @"2019/美国。中国大陆/ 剧情 动作 科幻/李安/ 123123";
            tableViewCellOne.labelHave.text = @"6.0万人看过";
        
        return tableViewCellOne;
    }
    return cell;
}






@end
