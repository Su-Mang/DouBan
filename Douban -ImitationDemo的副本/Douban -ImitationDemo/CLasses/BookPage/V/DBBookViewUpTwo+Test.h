//
//  DBBookViewUpTwo+Test.h
//  Douban -ImitationDemo
//
//  Created by 岳靖翔 on 2019/10/31.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "DBBookViewUpTwo.h"

NS_ASSUME_NONNULL_BEGIN

@interface DBBookViewUpTwo (Test)
-(NSString *) deal :(NSString*)data;
-(void) labelWant:(NSString *)ID
                  label:(UILabel *)label;
@end

NS_ASSUME_NONNULL_END
