//
//  DBAllCellOne.h
//  Douban -ImitationDemo
//
//  Created by 岳靖翔 on 2019/10/21.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DBStarView.h"
NS_ASSUME_NONNULL_BEGIN

@interface DBAllCellOne : UIView
@property (nonatomic, strong) UIButton * buttonBuy;
@property (nonatomic, strong)  UILabel * labelTitle;
@property (nonatomic, strong) UILabel * labelJianjie;
@property (nonatomic, strong) UILabel * labelHave;
@property (nonatomic, strong) UIImageView * imagePic;
@property (nonatomic, strong) DBStarView * starView;

@end

NS_ASSUME_NONNULL_END
