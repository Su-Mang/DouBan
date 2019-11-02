//
//  DBBookViewController.m
//  Douban -ImitationDemo
//
//  Created by 岳靖翔 on 2019/10/15.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "DBBookViewController.h"
#import "DBAllViewController.h"
#import "DBHomeViewController.h"
#import "DBBookViewController.h"
@interface DBBookViewController ()<UITableViewDataSource, UITableViewDelegate>
@property NSString * cntStr;
@end

@implementation DBBookViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self updateBookCommit];
    
    self.navigationController.navigationBar.hidden = YES;
   
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
  
    self.searchView = [[DBBookVIew alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:self.searchView];
    
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(recive:) name:@"send" object:nil];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(skipCon) name:@
     "PageALL" object:nil];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(reloate:) name:@"reloate" object:nil];
    NSLog(@"%ld",_BookPageModel.total);
    [self selectScrollView];
    
    
  
}
-(void)selectScrollView {
    if([_cntStr isEqualToString:@"1"]) {
        self.searchView.viewFirst.b =1 ;
        NSLog(@"1");
    }
    if([_cntStr isEqualToString:@"2"]) {
       self.searchView.viewFirst.b = 2 ;
        NSLog(@"2");
    }
    
    
}
- (void)updateBookCommit {
    [[DBBookPageManager sharedManager]fetchHaveLatestDailyDataWithSucceed:^(DBBookPageModel * _Nonnull latestDataModel) {
        self.searchView.viewFirst.pageHaveModel = [[DBBookPageModel alloc] init];
        self.searchView.viewFirst.pageHaveModel = latestDataModel;
    } error:^(NSError * _Nonnull error) {
         NSLog(@"添加失败");
    }];
    [[DBBookPageManager sharedManager]fetchLatestDailyDataWithSucceed:^(DBBookPageModel * _Nonnull latestDataModel) {
        self.searchView.viewFirst.pageModel = [[DBBookPageModel alloc] init];
        self.searchView.viewFirst.pageModel = latestDataModel;
        //创建通知
        NSNotification *Relate = [NSNotification notificationWithName:@"relate" object:self userInfo:nil];
        //通过通知中心发送通知更新
        [[NSNotificationCenter defaultCenter]postNotification:Relate];
    } error:^(NSError * _Nonnull error) {
          NSLog(@"添加失败");
    
    }];
}

-(void)reloate: (NSNotification*)notie{
    NSLog(@"更新");
     NSDictionary * dict = notie.userInfo;
    NSLog(@"%@",_cntStr);
    _cntStr = dict[@"input"];
     NSLog(@"%@",_cntStr);
    [self.searchView.tableviewOne reloadData];
  
}
-(void)skipCon {
    DBAllViewController * DBBookAll = [[DBAllViewController alloc] init];
   // [self.navigationController pushViewController:DBBookAll animated:nil];
   [self presentViewController:DBBookAll animated:YES completion:nil];
}
-(void)recive:(NSNotification*)noti
{
   
    
    NSString * strTrue = @"1";
    NSDictionary*dic = noti.userInfo;
    if ([strTrue isEqualToString:   dic[@"input"]]) {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"" message:@"已添加到想看列表" preferredStyle:UIAlertControllerStyleAlert];
         [self presentViewController:alert animated:YES completion:nil];
        [self performSelector:@selector(nextView) withObject:self afterDelay:1];
    }
    else {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"" message:@"已从想看列表的列表移除" preferredStyle:UIAlertControllerStyleAlert];
         [self presentViewController:alert animated:YES completion:nil];
        [self performSelector:@selector(nextView) withObject:self afterDelay:1];
    }
   
}

- (void) nextView {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
