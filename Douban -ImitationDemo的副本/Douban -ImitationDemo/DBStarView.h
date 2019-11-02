//
//  DBStarView.h
//  Douban -ImitationDemo
//
//  Created by 岳靖翔 on 2019/10/21.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DBStarView : UIView
- (void)creatImage:(NSInteger) star:(CGRect)frame;
 - (void)changeImage:(NSInteger) star :(DBStarView*)view;
@end

NS_ASSUME_NONNULL_END
