//
//  DBAllViewController.m
//  Douban -ImitationDemo
//
//  Created by 岳靖翔 on 2019/10/19.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "DBAllViewController.h"
#import <Masonry.h>
@interface DBAllViewController ()

@end

@implementation DBAllViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.viewAllNav = [[DBAllView alloc] init];
    [self.viewAllNav setFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:self.viewAllNav];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.viewAllNav.DBAllViewNav.buttonBack addTarget:self action:@selector(backClick) forControlEvents:UIControlEventTouchUpInside];
}
-(void)backClick {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
