//
//  DBSkipViewController.m
//  Dou-ban-make
//
//  Created by 岳靖翔 on 2019/10/12.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "DBSkipViewController.h"
#import "DBMainViewController.h"
#import "DBTwoMainViewController.h"
@interface DBSkipViewController ()

@end

@implementation DBSkipViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *image = [[UIImageView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    image.image = [UIImage imageNamed:@""];
    [self.view addSubview:image];
  
    
//在延迟后使用默认模式调用当前线程上的接收器方法。
    [self performSelector:@selector(nextView) withObject:self afterDelay:1];
}

-(void)nextView {
    
    DBMainViewController * homeViewController = [[DBMainViewController alloc]init];
    DBTwoMainViewController *bookViewController = [[DBTwoMainViewController alloc]init];
    DBTwoMainViewController * groupViewController = [[DBTwoMainViewController alloc]init];
    DBTwoMainViewController * marketViewController = [[DBTwoMainViewController alloc]init];
    DBTwoMainViewController * mineViewController = [[DBTwoMainViewController alloc]init];
    
    UINavigationController * homeNavigationController = [[UINavigationController alloc]initWithRootViewController:homeViewController];
    UINavigationController * bookNavigationController = [[UINavigationController alloc]initWithRootViewController:bookViewController];
    UINavigationController * groupNavigationController = [[UINavigationController alloc]initWithRootViewController:groupViewController];
    UINavigationController * marketNavigationController = [[UINavigationController alloc]initWithRootViewController:marketViewController];
    UINavigationController * mineNavigationController = [[UINavigationController alloc]initWithRootViewController:mineViewController];
    
    NSArray *navArray = [NSArray arrayWithObjects:homeNavigationController,bookNavigationController,groupNavigationController,marketNavigationController,mineNavigationController, nil];
    UITabBarController * tabarController = [[UITabBarController alloc]init];
    tabarController.tabBar.tintColor = [UIColor whiteColor];
    
    
    [homeNavigationController setTitle:@"首页"];
    [bookNavigationController setTitle:@"书影圈"];
    [groupNavigationController setTitle:@"小组"];
    [marketNavigationController setTitle:@"市集"];
    [mineNavigationController setTitle:@"我的"];
    
    
    [homeNavigationController.tabBarItem setImage:[UIImage imageNamed:@"shouye-3.png"]];
    [bookNavigationController.tabBarItem setImage:[UIImage imageNamed:@"dianyingpiao.png"]];
    [groupNavigationController.tabBarItem setImage:[UIImage imageNamed:@"pengyouquan-4.png"]];
    [marketNavigationController.tabBarItem setImage:[UIImage imageNamed:@"shichang.png"]];
     [mineNavigationController.tabBarItem setImage:[UIImage imageNamed:@"weibiaoti-.png"]];
    
    
    [tabarController.tabBar setBarTintColor:[UIColor whiteColor]];
    [tabarController.tabBar setTintColor:[UIColor greenColor]];
    tabarController.viewControllers = navArray;

    [self presentViewController:tabarController animated:YES completion:nil];
}

@end
