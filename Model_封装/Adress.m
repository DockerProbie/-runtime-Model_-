//
//  Adress.m
//  Model_封装
//
//  Created by qf on 15/10/8.
//  Copyright (c) 2015年 YF. All rights reserved.
//

#import "Adress.h"

@implementation Adress
+ (instancetype)addressWithDict:(NSDictionary *)dcit
{
    
    return [[self alloc] initWithDict:dcit];
}
- (instancetype)initWithDict:(NSDictionary *)dict {
    
    if(self = [super init]){
        
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}
- (NSString *)description {

    return [NSString stringWithFormat:@"city = %@,cityNumber = %@",_city,_cityNumber];
}
@end
