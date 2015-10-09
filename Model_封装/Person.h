//
//  Person.h
//  Model_封装
//
//  Created by qf on 15/10/8.
//  Copyright (c) 2015年 YF. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Adress.h"
#import "NSObject+Model.h"
#import "School.h"

@interface Person : NSObject

@property (nonatomic,copy) NSString *name;
@property (nonatomic,assign) int age;
@property (nonatomic,assign) BOOL marry;
@property (nonatomic ,strong) Adress *address;
@property (nonatomic,strong) School *school;

//+ (instancetype)personWithDict:(NSDictionary *)dict;
//- (instancetype)initWithDict:(NSDictionary *)dict;
@end
