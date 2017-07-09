//
//  TestTableColumnTomas.m
//  CTPersistance
//
//  Created by casa on 2017/7/10.
//  Copyright © 2017年 casa. All rights reserved.
//

#import "TestTableColumnTomas.h"

@implementation TestTableColumnTomas

+ (NSString *)columName
{
    return @"tomas";
}

+ (NSString *)columType
{
    return CTPersistanceColumnTypeText;
}

+ (BOOL)isPrimaryKey
{
    return NO;
}

+ (BOOL)isAutoIncrement
{
    return NO;
}

+ (BOOL)isNOTNULL
{
    return YES;
}

@end
