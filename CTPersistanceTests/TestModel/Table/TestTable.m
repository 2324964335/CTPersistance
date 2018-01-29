//
//  TestModel.m
//  CTPersistance
//
//  Created by casa on 15/10/5.
//  Copyright © 2015年 casa. All rights reserved.
//

#import "TestTable.h"

@implementation TestTable

#pragma mark - CTPersistanceTableProtocol
- (NSString *)tableName
{
    return @"test";
}

- (NSString *)databaseName
{
    //you can use like:
    return @"testdatabase.sqlite";
    
    //Or
    //return @"User/Shopping/testdatabase.sqlite";
    
}

-(NSDictionary *)columnDetaultValue {
    return @{
             @"defaultInt":@"0",
             @"defaultStr":@"",
             @"defaultBool":@"1"
             };
}

- (NSDictionary *)columnInfo
{
    return @{
             @"primaryKey":@"INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL",
             @"name":@"TEXT",
             @"age":@"INTEGER",
             @"isCelebrity":@"BOOLEAN",
             @"avatar":@"BLOB",
             @"progress":@"REAL",
             @"timeStamp":@"INTEGER",
             @"defaultInt":@"INTEGER",
             @"defaultStr":@"TEXT NOT NULL",
             @"defaultBool":@"INTEGER"
             };
}

- (Class)recordClass
{
    return [TestRecord class];
}

- (NSString *)primaryKeyName
{
    return @"primaryKey";
}

- (NSArray<NSDictionary *> *)indexList
{
    return @[
             @{
                 kCTPersistanceTableIndexName:@"IndexAge",
                 kCTPersistanceTableIndexedColumnList:@[@"age"],
                 kCTPersistanceTableIndexIsUniq:@(NO),
                 },
            ];
}

@end
