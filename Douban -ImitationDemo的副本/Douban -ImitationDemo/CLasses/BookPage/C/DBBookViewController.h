//
//  DBBookViewController.h
//  Douban -ImitationDemo
//
//  Created by 岳靖翔 on 2019/10/15.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DBBookView.h"
#import "DBBookPageModel.h"
#import "DBBookPageManager.h"
NS_ASSUME_NONNULL_BEGIN

@interface DBBookViewController : UIViewController
@property (nonatomic, strong) DBBookVIew * searchView;
@property (nonatomic, strong) DBBookPageModel *BookPageModel;

@end

NS_ASSUME_NONNULL_END
