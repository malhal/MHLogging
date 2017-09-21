//
//  CKFetchDatabaseChangesOperation+MHL.m
//  MHLogging
//
//  Created by Malcolm Hall on 20/09/2017.
//  Copyright © 2017 Malcolm Hall. All rights reserved.
//

#import "CKFetchDatabaseChangesOperation+MHL.h"
#import "CKDatabaseOperation+MHL.h"
#import "CKOperation+MHL.h"

@implementation CKFetchDatabaseChangesOperation (MHL)

- (NSDictionary *)mhl_loggingValues{
    NSMutableDictionary *dict = super.mhl_loggingValues.mutableCopy;
    NSString *s;
    if(self.previousServerChangeToken){
        s = [self.previousServerChangeToken description]; // data base64EncodedStringWithOptions:0x0] is private
    }else{
        s = @"(none)";
    }
    dict[@"serverChangeToken"] = s;
    return dict;
}

@end
