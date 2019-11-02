//
//  DBHomeViewController.m
//  Douban -ImitationDemo
//
//  Created by 岳靖翔 on 2019/10/15.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "DBHomeViewController.h"
#import "DBHomeView.h"
#import "DBBookPageModel.h"
@interface DBHomeViewController ()<UIScrollViewDelegate>
@property (nonatomic, strong) DBHomeView *homeView;
@property DBBookPageModel * ModelBook;
@end

@implementation DBHomeViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
 
    self.navigationController.navigationBar.hidden = YES;
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.homeView = [[DBHomeView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:_homeView];
    
    self.homeView.scrollViewFlow.delegate = self;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    [self.homeView.BUttonFlow.scviewFlow setContentOffset:CGPointMake(scrollView.contentOffset.x/(self.view.frame.size.width)*100+100,0)];
    if(scrollView.contentOffset.x==0) {
        self.homeView.BUttonFlow.buttonleft.selected = NO;
        self.homeView.BUttonFlow.buttonRight.selected = YES;
    }
    else if (scrollView.contentOffset.x == self.view.frame.size.width) {
        self.homeView.BUttonFlow.buttonRight.selected = NO;
        self.homeView.BUttonFlow.buttonleft.selected = YES;
    }
}

@end
