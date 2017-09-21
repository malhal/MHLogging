//
//  CKRecordID+MHL.m
//  MHLogging
//
//  Created by Malcolm Hall on 20/09/2017.
//  Copyright © 2017 Malcolm Hall. All rights reserved.
//

#import "CKRecordID+MHL.h"
#import "CKRecordZoneID+MHL.h"

@implementation CKRecordID (MHL)

- (NSString *)mhl_loggingDescription{
    return self.description;
}

- (NSString *)mhl_loggingDescriptionIncludingBrackets:(BOOL)includingBrackets{
    NSMutableString *s = [NSMutableString string];
    if(includingBrackets){
        [s appendString:@"<"];
    }
    [s appendString:self.recordName];
    if(![self.zoneID.ownerName isEqualToString:CKCurrentUserDefaultName]){
        [s appendFormat:@" %@", self.zoneID.ownerName];
    }
    if(includingBrackets){
        [s appendString:@"<"];
    }
    return s;
}

@end
