//
//  Person.m
//  Model_封装
//
//  Created by qf on 15/10/8.
//  Copyright (c) 2015年 YF. All rights reserved.
//

#import "Person.h"

@implementation Person
+ (instancetype)personWithDict:(NSDictionary *)dict
{

    return [[self alloc] initWithDict:dict];
}
- (instancetype)initWithDict:(NSDictionary *)dict {

    if(self = [super init]){
    
        
        
    
        [self setValuesForKeysWithDictionary:dict];
//        self.address = [Adress addressWithDict:self.address];
        NSLog(@"address = %@",[self.address class]);
    }
    return self;
}
- (NSString *)description {

    return [NSString stringWithFormat:@"name = %@,age = %d,marry = %hhd,address = %@",_name,_age,_marry,_address];
}
@end
