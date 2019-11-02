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
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

- (void)creatImage:(NSInteger) star:(CGRect)frame {
     UILabel * labelStar = [[UILabel alloc] init];
    NSString * str = [NSString stringWithFormat:@"%.1f",(float)star ];
    NSLog(@"%@",str);
    
    [labelStar setFont:[UIFont systemFontOfSize:12]];
    [labelStar setTextColor:[UIColor blackColor]];
    [labelStar setText:str];
    if (star == 0) {
        UILabel *label = [[UILabel alloc] init];
        [self addSubview:label];
        [label setText:@"尚未上映"];
        [label setFont:[UIFont systemFontOfSize:10]];
        [label setFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
        [label setTextColor:[UIColor grayColor]];
        [label setFont:[UIFont systemFontOfSize:10]];
    } else {
       
        for (int i = 0; i < 5; i++) {
            if (star > 1) {
                UIImageView * image = [[UIImageView alloc] init];
                [image setImage:[UIImage imageNamed:@"xingxing-2.png"]];
                [image setFrame:CGRectMake(i*11, 0, frame.size.width/7, 13)];
                [self addSubview:image];
            } else if (star >0) {
                UIImageView * image = [[UIImageView alloc] init];
                [image setImage:[UIImage imageNamed:@"yinghuochongbanxing.png"]];
                [image setFrame:CGRectMake(i*11, 0, frame.size.width/7, 13)];
                [self addSubview:image];
            }
            else {
                UIImageView * image = [[UIImageView alloc] init];
                [image setImage:[UIImage imageNamed:@"xingxing.png"]];
                [image setFrame:CGRectMake(i*11, 0, frame.size.width/7, 13)];
                [self addSubview:image];
                
            }
            star = star -2;
            
        }
        [self addSubview:labelStar];
        [labelStar mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(self).offset(-20);
            make.width.mas_equalTo(20);
            make.height.mas_equalTo(13);
        }];
      
    }
}
    - (void)changeImage:(NSInteger) star :(DBStarView*)view {
        UILabel * labelStar = [[UILabel alloc] init];
        NSString * str = [NSString stringWithFormat:@"%.1f",(float)star ];
        NSLog(@"%@",str);
        
        [labelStar setFont:[UIFont systemFontOfSize:12]];
        [labelStar setTextColor:[UIColor blackColor]];
        [labelStar setText:str];
        if (star == 0) {
            UILabel *label = [[UILabel alloc] init];
            [self addSubview:label];
            [label setText:@"尚未上映"];
            [label setFont:[UIFont systemFontOfSize:10]];
            [label setFrame:CGRectMake(0, 0, 105, 20)];
            [label setTextColor:[UIColor grayColor]];
            [label setFont:[UIFont systemFontOfSize:10]];
        } else {
            
            for (int i = 0; i < 5; i++) {
                if (star > 1) {
                    UIImageView * image = [[UIImageView alloc] init];
                    [image setImage:[UIImage imageNamed:@"xingxing-2.png"]];
                    [image setFrame:CGRectMake(i*11, 0, 105/7, 13)];
                    [self addSubview:image];
                } else if (star >0) {
                    UIImageView * image = [[UIImageView alloc] init];
                    [image setImage:[UIImage imageNamed:@"yinghuochongbanxing.png"]];
                    [image setFrame:CGRectMake(i*11, 0, 105/7, 13)];
                    [self addSubview:image];
                }
                else {
                    UIImageView * image = [[UIImageView alloc] init];
                    [image setImage:[UIImage imageNamed:@"xingxing.png"]];
                    [image setFrame:CGRectMake(i*11, 0, 105/7, 13)];
                    [self addSubview:image];
                    
                }
                star = star -2;
                
            }
            [self addSubview:labelStar];
            [labelStar mas_makeConstraints:^(MASConstraintMaker *make) {
                make.right.mas_equalTo(self).offset(-20);
                make.width.mas_equalTo(20);
                make.height.mas_equalTo(13);
            }];
            
        }


}

@end
//_starScore = score;
//UILabel *scoreLabel = [[UILabel alloc] init];
//scoreLabel.frame = CGRectMake( 5 * self.frame.size.height + 10, 8, self.frame.size.width - 5 * self.frame.size.height - 10, self.frame.size.height - 8);
//scoreLabel.text = [NSString stringWithFormat:@"%.1f", _starScore];
//scoreLabel.textColor = [UIColor grayColor];
//for (int count = 0; count < 5; count++) {
//    UIImageView *starImageView = [[UIImageView alloc] init];
//    starImageView.frame = CGRectMake(count * self.frame.size.height, 0, self.frame.size.height, self.frame.size.height);
//    [self addSubview:starImageView];
//    _starScore = (_starScore / 2 - 0.3);
//    if (count <= _starScore - 0.5) {
//        starImageView.image = [UIImage imageNamed:@"xingxing-2.png"];
//    } else {
//        if (_starScore - count >= 0 && _starScore - count < 0.5) {
//            starImageView.image = [UIImage imageNamed:@"yinghuochongbanxing.png"];
//        } else {
//            starImageView.image = [UIImage imageNamed:@"xingxing.png"];
//        }
//    }
//
//}
//[self addSubview:scoreLabel];
