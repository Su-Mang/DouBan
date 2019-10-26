//
//  DBAllView.h
//  Douban -ImitationDemo
//
//  Created by 岳靖翔 on 2019/10/19.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DBAllViewNav.h"
#import "DBAllTableViewCellOne.h"
NS_ASSUME_NONNULL_BEGIN

@interface DBAllView : UIView
@property (nonatomic, strong)DBAllViewNav * DBAllViewNav;
@property (nonatomic, strong)UIScrollView * scrollViewAllFlow;
@property (nonatomic, strong)UITableView *tableViewOne;
@property (nonatomic, strong)UITableView *tableViewTwo;
@property (nonatomic, strong)UITableView *tableViewThree;
@end

NS_ASSUME_NONNULL_END
