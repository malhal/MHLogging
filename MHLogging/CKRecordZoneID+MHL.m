//
//  CKRecordZoneID+MHL.m
//  MHLogging
//
//  Created by Malcolm Hall on 20/09/2017.
//  Copyright © 2017 Malcolm Hall. All rights reserved.
//


#import "CKRecordZoneID+MHL.h"

@implementation CKRecordZoneID (MHL)

- (NSString *)mhl_loggingDescription{
    NSString *s;
    if([self.ownerName isEqualToString:CKCurrentUserDefaultName]){
        s = [NSString stringWithFormat:@"<%@>", self.zoneName];
    }
    else{
        s = [NSString stringWithFormat:@"<%@ %@>", self.ownerName, self.zoneName];
    }
    return s;
}

@end
