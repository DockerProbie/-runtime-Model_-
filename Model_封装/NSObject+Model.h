//
//  NSObject+Model.h
//  Model_封装
//
//  Created by qf on 15/10/8.
//  Copyright (c) 2015年 YF. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Model)
+ (instancetype)objectWithKeyValues:(NSDictionary *)dict;
- (instancetype)initWithKeyValues:(NSDictionary *)dict;

- (NSDictionary *)keyValueWithObject;
@end
