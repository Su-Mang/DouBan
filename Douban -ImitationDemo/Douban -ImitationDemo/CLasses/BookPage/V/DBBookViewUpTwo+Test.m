//
//  DBBookViewUpTwo+Test.m
//  Douban -ImitationDemo
//
//  Created by 岳靖翔 on 2019/10/31.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "DBBookViewUpTwo+Test.h"
#import "DBBookPageManager.h"
@implementation DBBookViewUpTwo (Test)
- (NSString *)deal:(NSString *)data {
    NSString * str =  [data substringFromIndex:5];
    str = [str stringByReplacingCharactersInRange:NSMakeRange(2,1)  withString:@"月"];
    str = [NSString stringWithFormat:@" %@日",str];
    //NSLog(@"%@",str);
    return str;
}
- (void)labelWant:(NSString *)ID
                  label:(UILabel *)label {
  __block  NSString * str ;
    [[DBBookPageManager sharedManager]fetchExtraInformationWithID:(ID) succeed:^(NSString *latestWant) {
        str = latestWant;
        dispatch_sync(dispatch_get_main_queue(), ^{
           // [button setText:str];
            NSLog(@"latestWant:%@",latestWant);
            str = [NSString stringWithFormat:@"%@想看",latestWant];
           // self.pageHaveModel.number = latestWant;
           // NSLog(@"button:%@", label);
            [label setText:str];
            //[label setText:self.pageHaveModel.number];
          
        });
       
       
    } error:^(NSError * _Nonnull error) {
        NSLog(@"error");
    }];
 
    
}
@end
