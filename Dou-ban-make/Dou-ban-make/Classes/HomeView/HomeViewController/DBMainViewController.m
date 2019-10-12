//
//  DBMainViewController.m
//  Dou-ban-make
//
//  Created by 岳靖翔 on 2019/10/12.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "DBMainViewController.h"

@interface DBMainViewController ()

@end

@implementation DBMainViewController
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    _homeView = [[HomeView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:_homeView];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
