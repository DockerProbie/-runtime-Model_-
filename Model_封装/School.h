//
//  School.h
//  Model_封装
//
//  Created by qf on 15/10/8.
//  Copyright (c) 2015年 YF. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Adress.h"

@interface School : NSObject

@property (nonatomic,copy) NSString *name;
@property (nonatomic,strong) Adress *address;

@end
