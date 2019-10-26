//
//  DBBookViewUpTwo.h
//  Douban -ImitationDemo
//
//  Created by 岳靖翔 on 2019/10/17.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DBBookViewButton.h"
#import "DBBookViewButtonTwo.h"
#import "DBBookPageModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface DBBookViewUpTwo : UIView
@property (nonatomic, strong)UIButton * buttonHave;
@property (nonatomic, strong)UIButton * buttonWill;
@property (nonatomic, strong)UIButton * buttoniamgeHave;
@property (nonatomic, strong)UIButton * buttoniamgeWill;
@property (nonatomic, strong)UIButton * buttonAll;
@property (nonatomic, strong)UIScrollView * scrollviewFlowAll;
@property (nonatomic, strong)DBBookViewButton * buttonWiLLOne;
@property (nonatomic, strong)DBBookViewButton * buttonWiLLTwo;
@property (nonatomic, strong)DBBookViewButton * buttonWiLLThree;
@property (nonatomic, strong)DBBookViewButton * buttonWiLLFour;
@property (nonatomic, strong)DBBookViewButton * buttonWiLLFive;
@property (nonatomic, strong)DBBookViewButton * buttonWiLLSix;
@property (nonatomic, strong)DBBookViewButtonTwo * buttonOne;
@property (nonatomic, strong)DBBookViewButtonTwo * buttonTwo;
@property (nonatomic, strong)DBBookViewButtonTwo * buttonThree;
@property (nonatomic, strong)DBBookViewButtonTwo * buttonFour;
@property (nonatomic, strong)DBBookViewButtonTwo * buttonFive;
@property (nonatomic, strong)DBBookViewButtonTwo * buttonSix;
@property (nonatomic, strong)DBBookPageModel * pageModel;
@property int a;
@end

NS_ASSUME_NONNULL_END
