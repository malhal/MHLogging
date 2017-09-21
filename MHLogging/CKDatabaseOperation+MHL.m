//
//  CKDatabaseOperation+MHL.h
//  MHLogging
//
//  Created by Malcolm Hall on 20/09/2017.
//  Copyright © 2017 Malcolm Hall. All rights reserved.
//

#import "CKDatabaseOperation+MHL.h"

@implementation CKDatabaseOperation (MHL)

- (NSDictionary *)mhl_loggingValues{
    NSMutableDictionary *dict = super.mhl_loggingValues.mutableCopy;
    dict[@"databaseScope"] = @(self.database.databaseScope); // CKDatabaseScopeString is private
    return dict;
}

@end
