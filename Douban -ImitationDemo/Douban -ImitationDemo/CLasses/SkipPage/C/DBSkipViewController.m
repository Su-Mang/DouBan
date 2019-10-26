//
//  DBSkipViewController.m
//  Douban -ImitationDemo
//
//  Created by 岳靖翔 on 2019/10/15.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "DBSkipViewController.h"
#import "DBHomeViewController.h"
#import "DBBookViewController.h"

@interface DBSkipViewController ()
@property DBBookPageModel * bookPageModel;
@end

@implementation DBSkipViewController
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self updateBookCommit];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *image = [[UIImageView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    image.image = [UIImage imageNamed:@""];
    [self.view addSubview:image];
    [self performSelector:@selector(nextView) withObject:self afterDelay:1];
    
}
- (void)updateBookCommit {
    [[DBBookPageManager sharedManager]fetchLatestDailyDataWithSucceed:^(DBBookPageModel * _Nonnull latestDataModel) {
        self->_bookPageModel = latestDataModel;
        
    } error:^(NSError * _Nonnull error) {
        NSLog(@"添加失败");
        
    }];
}


#pragma mark--切换
-(void)nextView {
    DBHomeViewController * homeViewController = [[DBHomeViewController alloc] init];
    DBBookViewController *bookViewController = [[DBBookViewController alloc] init];
    DBBookViewController * groupViewController = [[DBBookViewController alloc] init];
    DBBookViewController * marketViewController = [[DBBookViewController alloc] init];
    DBBookViewController * mineViewController = [[DBBookViewController alloc] init];
    
    UINavigationController * homeNavigationController = [[UINavigationController alloc]initWithRootViewController:homeViewController];
    UINavigationController * bookNavigationController = [[UINavigationController alloc]initWithRootViewController:bookViewController];
    UINavigationController * groupNavigationController = [[UINavigationController alloc]initWithRootViewController:groupViewController];
    UINavigationController * marketNavigationController = [[UINavigationController alloc]initWithRootViewController:marketViewController];
    UINavigationController * mineNavigationController = [[UINavigationController alloc]initWithRootViewController:mineViewController];
    
    NSArray *navArray = [NSArray arrayWithObjects:homeNavigationController,bookNavigationController,groupNavigationController,marketNavigationController,mineNavigationController, nil];
    UITabBarController * tabarController = [[UITabBarController alloc]init];
    bookViewController.BookPageModel = self.bookPageModel;
    
    
    [homeNavigationController setTitle:@"首页"];
    [bookNavigationController setTitle:@"书影圈"];
    [groupNavigationController setTitle:@"小组"];
    [marketNavigationController setTitle:@"市集"];
    [mineNavigationController setTitle:@"我的"];
    
    
    [homeNavigationController.tabBarItem setImage:[UIImage imageNamed:@"shouye-3.png"]];
    [homeNavigationController.tabBarItem setSelectedImage:[UIImage imageNamed:@"shouye2.png"]];
    [bookNavigationController.tabBarItem setImage:[UIImage imageNamed:@"dianyingpiao.png"]];
    UIImage *image = [[UIImage imageNamed:@"-dianyingpiao-.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [bookNavigationController.tabBarItem setSelectedImage:image];
    [groupNavigationController.tabBarItem setImage:[UIImage imageNamed:@"pengyouquan-4.png"]];
    [groupNavigationController.tabBarItem setSelectedImage:[UIImage imageNamed:@"pengyouquan-5.png"]];
    [marketNavigationController.tabBarItem setImage:[UIImage imageNamed:@"shichangdongtai.png"]];
    [marketNavigationController.tabBarItem setSelectedImage:[UIImage imageNamed:@"shichang.png"]];
    [mineNavigationController.tabBarItem setImage:[UIImage imageNamed:@"weibiaoti-.png"]];
    [mineNavigationController.tabBarItem setSelectedImage:[UIImage imageNamed:@"wode.png"]];
    
    
    [tabarController.tabBar setBackgroundColor:[UIColor whiteColor]];
    [tabarController.tabBar setBarTintColor:[UIColor whiteColor]];
    [tabarController.tabBar setTintColor:[UIColor colorWithRed:0.4039 green:0.72941176 blue:0.38431373 alpha:1]];
    tabarController.viewControllers = navArray;
    
    [self presentViewController:tabarController animated:YES completion:nil];
    
   
}
@end
