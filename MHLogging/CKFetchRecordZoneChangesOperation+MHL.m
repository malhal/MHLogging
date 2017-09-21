//
//  CKFetchRecordZoneChangesOperation+MHL.m
//  MHLogging
//
//  Created by Malcolm Hall on 20/09/2017.
//  Copyright © 2017 Malcolm Hall. All rights reserved.
//

#import "CKFetchRecordZoneChangesOperation+MHL.h"
#import "CKOperation+MHL.h"
#import "CKRecordZoneID+MHL.h"

@implementation CKFetchRecordZoneChangesOperation (MHL)

- (NSString *)mhl_shortLoggingDescription{
    return [NSString stringWithFormat:@"<%@ %@>", NSStringFromClass(self.class), self.operationID];
}

- (NSDictionary *)mhl_loggingValues{
    NSMutableDictionary *dict = super.mhl_loggingValues.mutableCopy;
    [self.optionsByRecordZoneID enumerateKeysAndObjectsUsingBlock:^(CKRecordZoneID * _Nonnull key, CKFetchRecordZoneChangesOptions * _Nonnull obj, BOOL * _Nonnull stop) {
        CKServerChangeToken *token = obj.previousServerChangeToken;
        NSString *tokenDescription;
        if(token){
            tokenDescription = [token description]; // [token.data base64EncodedStringWithOptions:nil]; // token's data is private
        }
        else{
            tokenDescription = @"(none)";
        }
        NSString *recordZoneIDDescription = [key mhl_loggingDescription];
        dict[recordZoneIDDescription] = tokenDescription;
    }];
    return dict;
}

@end
