//
//  DBTwoMainViewController.m
//  Dou-ban-make
//
//  Created by 岳靖翔 on 2019/10/12.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "DBTwoMainViewController.h"

@interface DBTwoMainViewController ()

@end

@implementation DBTwoMainViewController
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
