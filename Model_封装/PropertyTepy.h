//
//  PropertyTepy.h
//  Model_封装
//
//  Created by qf on 15/10/8.
//  Copyright (c) 2015年 YF. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PropertyTepy : NSObject
//基本数据类型（int ,double,float。。。）
@property (nonatomic,assign,getter=isNumberType) BOOL numberType;
//是否是框架中提供的常用类型  NSString NSArray .....
@property (nonatomic,assign,getter=isFoundationType)BOOL foundationType;

//是否是自定义数据类型

@property (nonatomic,assign) Class classType;

@property (nonatomic,copy) NSString *keyString;

//传入一个自定义的包含数据类型的字符串

+ (id)properTypeWithKeystring:(NSString *)keyString;
@end
