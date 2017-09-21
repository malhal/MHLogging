//
//  CKRecord+MHL.m
//  MHLogging
//
//  Created by Malcolm Hall on 20/09/2017.
//  Copyright © 2017 Malcolm Hall. All rights reserved.
//

#import "CKRecord+MHL.h"
#import "CKRecordID+MHL.h"

@implementation CKRecord (MHL)

- (NSString *)mhl_loggingDescription{
    NSMutableString *s = [NSMutableString stringWithFormat:@"<%@ %@", self.recordType, [self.recordID mhl_loggingDescriptionIncludingBrackets:NO]];
    if(self.recordChangeTag){
        [s appendFormat:@" changeTag=%@", self.recordChangeTag];
    }
    if(self.share){
        [s appendFormat:@" share=%@", self.share.recordID.recordName];
    }
    [s appendString:@">"];
    return s;
}

@end
