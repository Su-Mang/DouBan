//
//  DBStarView.m
//  Douban -ImitationDemo
//
//  Created by 岳靖翔 on 2019/10/21.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "DBStarView.h"
#import <Masonry.h>
@implementation DBStarView

- (void)initWithFrame:(CGRect)frame:(double)score {
        _starScore = score;
        UILabel *scoreLabel = [[UILabel alloc] init];
    
        scoreLabel.frame = CGRectMake( 5 * self.frame.size.height + 10, 8, self.frame.size.width - 5 * self.frame.size.height - 10, self.frame.size.height - 8);
        scoreLabel.text = [NSString stringWithFormat:@"%.1f", _starScore];
        scoreLabel.textColor = [UIColor grayColor];
        for (int count = 0; count < 5; count++) {
            UIImageView *starImageView = [[UIImageView alloc] init];
            starImageView.frame = CGRectMake(count * self.frame.size.height, 0, self.frame.size.height, self.frame.size.height);
            [self addSubview:starImageView];
            _starScore = (_starScore / 2 - 0.3);
            if (count <= _starScore - 0.5) {
                starImageView.image = [UIImage imageNamed:@"xingxing-2.png"];
            } else {
                if (_starScore - count >= 0 && _starScore - count < 0.5) {
                    starImageView.image = [UIImage imageNamed:@"yinghuochongbanxing.png"];
                } else {
                    starImageView.image = [UIImage imageNamed:@"xingxing.png"];
                }
            }
           
        }
      [self addSubview:scoreLabel];
        
    
   
}

@end
