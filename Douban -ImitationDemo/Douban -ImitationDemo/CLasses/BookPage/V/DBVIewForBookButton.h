//
//  DBVIewForBookButton.h
//  Douban -ImitationDemo
//
//  Created by 岳靖翔 on 2019/10/16.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DBVIewForBookButton : UIView
@property (nonatomic, strong) UIButton *buttonUp;
@property (nonatomic, strong) UIButton *buttondown;
- (void)creatView :(NSString*)Name;
@end

NS_ASSUME_NONNULL_END
