//
//  DBBookViewButton.h
//  Douban -ImitationDemo
//
//  Created by 岳靖翔 on 2019/10/16.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DBBookViewButton : UIView
@property (nonatomic, strong)UIButton * buttonUP;
@property (nonatomic, strong)UIButton * buttonSmall;
@property (nonatomic, strong)UILabel  * labelTitle;
@property (nonatomic, strong)UILabel  * labelWant;
@property (nonatomic, strong)UILabel  * labelData;
-(void) creatButton :(NSString *) textNameand :(NSString*)textWantand:(NSString *)textData:(NSString *)uiimageName;
-(void)click : (UIButton*) button;
@end

NS_ASSUME_NONNULL_END
