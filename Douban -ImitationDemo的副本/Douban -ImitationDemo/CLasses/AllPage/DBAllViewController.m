//
//  DBAllViewController.m
//  Douban -ImitationDemo
//
//  Created by 岳靖翔 on 2019/10/19.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "DBAllViewController.h"
#import <Masonry.h>
@interface DBAllViewController ()<UITableViewDelegate>

@end

@implementation DBAllViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.viewAllNav = [[DBAllView alloc] init];
    [self.viewAllNav setFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:self.viewAllNav];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.viewAllNav.DBAllViewNav.buttonBack addTarget:self action:@selector(backClick) forControlEvents:UIControlEventTouchUpInside];
    
    [self.viewAllNav.tableViewOne addObserver:self forKeyPath:NSStringFromSelector(@selector(contentOffset)) options:NSKeyValueObservingOptionNew context:nil];
    self.viewAllNav.dataArray = [[NSMutableArray alloc] init];
    [[DBBookPageManager sharedManager]fetchLatestDailyDataWithSucceed:^(DBBookPageModel * _Nonnull latestDataModel) {
    
        ProductModel * productModel = [[ProductModel alloc] init];
        for (int i = 0; i<self.viewAllNav.a; i++) {
            DBAllHaveModel * haveModel = [[DBAllHaveModel alloc] init];
            productModel = latestDataModel.subjects[i];
            haveModel.nameStr = productModel.title;
            haveModel.starStr = productModel.rating.average;
            haveModel.imageStr = productModel.images.medium;
            [self.viewAllNav.dataArray addObject:haveModel];
        }
            dispatch_async(dispatch_get_main_queue(), ^{
        [self.viewAllNav.tableViewOne reloadData];
            });
    } error:^(NSError * _Nonnull error) {
        
    }];
   
}
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    NSLog(@"%f",[change[NSKeyValueChangeNewKey] CGPointValue].y);
    
    if([change[NSKeyValueChangeNewKey] CGPointValue].y>968) {
       
        if(self.viewAllNav.a == 10)
        {
        self.viewAllNav.a = 20;
        [[DBBookPageManager sharedManager]fetchLatestDailyDataWithSucceed:^(DBBookPageModel * _Nonnull latestDataModel) {
                DBAllHaveModel * haveModel = [[DBAllHaveModel alloc] init];
                ProductModel * productModel = [[ProductModel alloc] init];
                for (int i = 10; i<self.viewAllNav.a; i++) {
                    DBAllHaveModel * haveModel = [[DBAllHaveModel alloc] init];
                    productModel = latestDataModel.subjects[i];
                    haveModel.nameStr = productModel.title;
                    NSLog(@"%@",haveModel.nameStr);
                    haveModel.starStr = productModel.rating.average;
                    haveModel.imageStr = productModel.images.medium;
                    [self.viewAllNav.dataArray addObject:haveModel];
                    
                }
                    dispatch_async(dispatch_get_main_queue(), ^{
                        [self.viewAllNav.tableViewOne reloadData];
                    });
                
            } error:^(NSError * _Nonnull error) {
                
            }];
    
            
        }
    }
    
}

-(void)backClick {
   
    [self dismissViewControllerAnimated:YES completion:nil];
}
-(void)dealloc {
    [self.viewAllNav.tableViewOne removeObserver:self forKeyPath:NSStringFromSelector(@selector(contentOffset))];
}
@end
