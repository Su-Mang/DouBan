//
//  DBBookPageManager.h
//  Douban -ImitationDemo
//
//  Created by 岳靖翔 on 2019/10/23.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DBBookPageModel.h"

NS_ASSUME_NONNULL_BEGIN
// 请求最新数据
typedef void(^DBILatestBookDataHandle)(DBBookPageModel *latestDataModel);
typedef void(^ID) (NSString * latestWant);

// 请求失败统一回调block
typedef void(^ErrorHandle)(NSError *error);
@interface DBBookPageManager : NSObject
+ (instancetype)sharedManager;
// 获取当日最新的数据
- (void)fetchLatestDailyDataWithSucceed:(DBILatestBookDataHandle)succeedBlock error:(ErrorHandle)errorBlock ;
- (void)fetchHaveLatestDailyDataWithSucceed:(DBILatestBookDataHandle)succeedBlock error:(ErrorHandle)errorBlock ;
- (void)fetchExtraInformationWithID:(NSString *)ID succeed:(ID)succeedBlock error:(ErrorHandle)errorBlock;
@end

NS_ASSUME_NONNULL_END
