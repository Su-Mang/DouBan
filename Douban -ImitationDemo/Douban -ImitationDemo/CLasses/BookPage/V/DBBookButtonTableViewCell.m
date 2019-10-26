//
//  DBBookButtonTableViewCell.m
//  Douban -ImitationDemo
//
//  Created by 岳靖翔 on 2019/10/19.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "DBBookButtonTableViewCell.h"

@implementation DBBookButtonTableViewCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self =  [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self) {
        self.BookbuttonWill = [[DBBookViewButton alloc]init];
        [self addSubview:self.BookbuttonWill];
        
    }
    return self;
}
- (void)layoutSubviews {
    [super layoutSubviews];
}
@end
