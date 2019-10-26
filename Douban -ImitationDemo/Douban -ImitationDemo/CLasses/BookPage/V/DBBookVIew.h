//
//  DBBookVIew.h
//  Douban -ImitationDemo
//
//  Created by 岳靖翔 on 2019/10/15.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DBBookViewUp.h"
#import "DBBookViewUpTwo.h"

NS_ASSUME_NONNULL_BEGIN

@interface DBBookVIew : UIView
@property (nonatomic, strong) UITextField * searchBar;
@property (nonatomic, strong) UIView * backView;
@property (nonatomic, strong) UIButton * buttonRight;
@property (nonatomic, strong)DBBookViewUp * bookButtonOne;
@property (nonatomic, strong)UITableView * tableviewOne;
@property (nonatomic, strong)UITableView * tableViewTwo;
@property (nonatomic, strong)UIScrollView *scrollView;
@property (nonatomic, strong)DBBookViewUpTwo *viewFirst;

@end

NS_ASSUME_NONNULL_END
