//
//  HomeView.h
//  Dou-ban-make
//
//  Created by 岳靖翔 on 2019/10/12.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HomeView : UIView
@property (nonatomic, strong) UITextField * searchBar;
@property (nonatomic, strong) UIButton * leftButton;
@property (nonatomic, strong) UIButton * rightButton;
@property (nonatomic, strong) UIView * backView;
@property (nonatomic, strong) UIView * BootomView;
@end

NS_ASSUME_NONNULL_END
