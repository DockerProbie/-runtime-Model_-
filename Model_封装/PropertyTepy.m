//
//  PropertyTepy.m
//  Model_封装
//
//  Created by qf on 15/10/8.
//  Copyright (c) 2015年 YF. All rights reserved.
//

#import "PropertyTepy.h"

@implementation PropertyTepy
+ (id)properTypeWithKeystring:(NSString *)keyString {

    PropertyTepy *propertyType = [[self alloc] init];
    
    propertyType.keyString = keyString;
    
    return propertyType;
}
- (void)setKeyString:(NSString *)keyString {

    _keyString = keyString;
    
    _numberType = YES;
    
    if(keyString.length > 3) {
    
        if([keyString rangeOfString:@"NS"].location != NSNotFound) {
        
            _foundationType = YES;
        }
        else {
            
            keyString = [keyString substringToIndex:keyString.length-1];
            keyString = [keyString substringFromIndex:3];
            _classType = NSClassFromString(keyString);
        }
    }
}

@end
