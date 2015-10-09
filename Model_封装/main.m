//
//  main.m
//  Model_封装
//
//  Created by qf on 15/10/8.
//  Copyright (c) 2015年 YF. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSDictionary *dict = @{@"name":@"yifang",
                               @"age":@(20),
                               @"marry":@YES,
                               @"address":
                                   @{@"city":@"北京",@"cityNumber":@"中国城"},
                               @"school":
                                   @{@"name":@"清华大学",
                                     @"address":
                                        @{@"city":@"南京",@"cityNumber":@"南京悲惨"}}
                               };
        
        Person *p = [Person objectWithKeyValues:dict];
        
        
//        NSLog(@"p.address.city %@",p.address.city);
//        NSLog(@"%@",p.school.address.city);

        NSLog(@"%@",[p keyValueWithObject]);
        
//        NSString *city = p.address.city;
//        NSString *cityNumbei = p.address.cityNumber;
//        NSLog(@"city %@",city);
//        NSLog(@"cityNumber = %@",cityNumbei);
//        
//        Class classAddress = [Adress class];
//        
//        Adress *value = [[classAddress alloc] init];
//        value.city = @"安徽";
//        NSLog(@"classAddress %@,city = %@",[value class],value.city);
//      
//        NSString *className = @"Adress";
//        Class addClass = NSClassFromString(className);
//        
//        Adress *address = [[addClass alloc] init];
//        address.city = @"南京";
//        
//        NSLog(@"city = %@",address.city);
        
    }
    return 0;
}
