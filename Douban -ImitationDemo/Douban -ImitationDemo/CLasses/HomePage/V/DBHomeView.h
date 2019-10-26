//
//  DBHomeView.h
//  Douban -ImitationDemo
//
//  Created by 岳靖翔 on 2019/10/15.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DBButtonView.h"
#import "DBStarView.h"
NS_ASSUME_NONNULL_BEGIN

@interface DBHomeView : UIView
@property (nonatomic, strong) UITextField * searchBar;
@property (nonatomic, strong) UIView *backView;
@property (nonatomic, strong) UIButton *buttonRight;
@property (nonatomic, strong) DBButtonView * BUttonFlow;
@property (nonatomic, strong) UIScrollView * scrollViewFlow;
@property (nonatomic,strong) DBStarView * sta;
@end

NS_ASSUME_NONNULL_END
