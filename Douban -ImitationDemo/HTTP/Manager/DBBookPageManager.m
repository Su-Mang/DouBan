//
//  DBBookPageManager.m
//  Douban -ImitationDemo
//
//  Created by 岳靖翔 on 2019/10/23.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "DBBookPageManager.h"
#import "DBBookPageModel.h"
static  DBBookPageManager * manger = nil;
@implementation DBBookPageManager
+ (instancetype)sharedManager {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manger = [[self alloc] init];
    });
    return manger;
}
- (void)fetchLatestDailyDataWithSucceed:(DBILatestBookDataHandle)succeedBlock error:(ErrorHandle)errorBlock {
       NSString * latestDailyDataURLStr = [NSString stringWithFormat:@"https://douban.uieee.com/v2/movie/in_theaters"];
    NSURL * latestDailyDataURL = [NSURL URLWithString:latestDailyDataURLStr];
       //封装一个请求类
    NSURLRequest * latestDailyDataRequest = [NSURLRequest requestWithURL:latestDailyDataURL];
      //创建Session
    NSURLSession *latestDailyDataSession = [NSURLSession sharedSession];
    NSURLSessionDataTask *latestDailyDataTask = [latestDailyDataSession dataTaskWithRequest:latestDailyDataRequest completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error == nil) {
               NSDictionary* resultDic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
            
            DBBookPageModel * latestBookDataModel = [[DBBookPageModel alloc] initWithDictionary:resultDic error:&error];
               succeedBlock(latestBookDataModel);
        }
        else {
            
        }
    }];
    [latestDailyDataTask resume];
    
    
}
@end
