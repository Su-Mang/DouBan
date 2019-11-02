//
//  DBBookViewButtonTwo.h
//  Douban -ImitationDemo
//
//  Created by 岳靖翔 on 2019/10/19.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DBStarView.h"
NS_ASSUME_NONNULL_BEGIN

@interface DBBookViewButtonTwo : UIView
@property (nonatomic, strong)UIButton * buttonUP;
@property (nonatomic, strong)UIButton * buttonSmall;
@property (nonatomic, strong)UILabel  * labelTitle;
@property (nonatomic, strong)DBStarView  * labelWant;
@property (nonatomic, strong)UIView * pinFenview;
-(void) creatButton :(NSString *) textNameand :(NSString*)textWantand:(NSString *)uiimageName;
@end

NS_ASSUME_NONNULL_END
