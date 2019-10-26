//
//  DBBookPageModel.h
//  Douban -ImitationDemo
//
//  Created by 岳靖翔 on 2019/10/24.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "JSONModel.h"

NS_ASSUME_NONNULL_BEGIN




//@protocol imageModel
//@end
//@protocol RatingModel
//@end
@protocol ProductModel
@end

@interface imageModel: JSONModel
@property (nonatomic) NSString * medium;
@end

@interface RatingModel: JSONModel
@property (nonatomic) NSInteger average;
@end

@interface ProductModel : JSONModel

@property (nonatomic, copy) NSString * title;
@property (nonatomic, copy) RatingModel * rating;
@property (nonatomic, copy) imageModel * images ;

@end

@interface  DBBookPageModel: JSONModel
@property (nonatomic) NSInteger total;
@property (nonatomic, copy) NSArray <ProductModel> *subjects;

@end
NS_ASSUME_NONNULL_END
