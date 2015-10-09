//
//  NSObject+Model.m
//  Model_封装
//
//  Created by qf on 15/10/8.
//  Copyright (c) 2015年 YF. All rights reserved.
//

#import "NSObject+Model.h"
#import <objc/runtime.h>
#import "Adress.h"
#import "PropertyTepy.h"
@interface NSObject ()
@property (nonatomic,strong) Adress *address;
@end

@implementation NSObject (Model)

+ (instancetype)objectWithKeyValues:(NSDictionary *)dict {

    return [[self alloc] initWithKeyValues:dict];
    
}

- (instancetype)initWithKeyValues:(NSDictionary *)dict {

    if(self = [self init]) {
        id value;
            //根据类文件描述，找到当前类中，特殊的那个属性类型，比如说Adress
            //取出相关类的类文件
            Class clazz = [self class];
            unsigned int outCount;
            //取出当前类相关的类文件的属性
            objc_property_t *propertyList = class_copyPropertyList(clazz, &outCount);
            for(int i = 0; i<outCount;i++) {
                //取出类文件中，相关的属性的描述
                objc_property_t property_t = propertyList[i];
                //属性的名称
                NSString *property_keyName = [NSString stringWithUTF8String:property_getName(property_t)];
                //根据key取出字典中的对应的值
                value = dict[property_keyName];
                //与属性相关的描述,当中最为重要的就是属性的数据类型
                //const char * attributes = property_getAttributes(property_t);
                NSString *attrivutes = [NSString stringWithUTF8String:property_getAttributes(property_t)];
//                NSLog(@"%@",attrivutes);
                NSRange subRange = NSMakeRange(0, [attrivutes rangeOfString:@","].location);
                NSString *keyString = [attrivutes substringWithRange:(subRange)];
//                NSLog(@"keyString = %@",keyString);
                PropertyTepy *propertyType = [PropertyTepy properTypeWithKeystring:keyString];
                if(propertyType.classType) {
                    
                    value = [propertyType.classType objectWithKeyValues:dict [property_keyName]];
                }
                
                //找到 property_keyName 属性 对应的值
                [self setValue:value forKey:property_keyName];
            
                //1.基本数据类型（int ,float。。。。）
                //2.foundation框架 提供的常用类型
                //3.自定义的数据类型
        }
            
//            [self setValue:value forKey:key];
        

        
    }
    
    return self;
}
- (NSMutableDictionary *)keyValueWithObject {
    
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    
    Class clazz = [self class];
    unsigned int outCount;
    objc_property_t *propertyList = class_copyPropertyList(clazz, &outCount);
    
    for(int i = 0; i< outCount; i ++) {
    
        objc_property_t property_t = propertyList[i];
        
        NSString *property_keyName = [NSString stringWithUTF8String:property_getName(property_t)];
//        NSLog(@"property_keyName = %@",property_keyName);
        NSString *attritus = [NSString stringWithUTF8String:property_getAttributes(property_t)];
        
        NSRange subRange = NSMakeRange(0, [attritus rangeOfString:@","].location);
        NSString *keyString = [attritus substringWithRange:(subRange)];
        
        PropertyTepy *propertyType = [PropertyTepy properTypeWithKeystring:keyString];

        id value = [self valueForKey:property_keyName];
        if(propertyType.classType) {
        
            value = [value keyValueWithObject];
           
        }
        
      [dict setValue:value forKey:property_keyName];
        
       
    }
    
    return dict;
}

@end
