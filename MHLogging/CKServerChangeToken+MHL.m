//
//  CKServerChangeToken+MHL.m
//  MHLogging
//
//  Created by Malcolm Hall on 21/09/2017.
//  Copyright © 2017 Malcolm Hall. All rights reserved.
//

#import "CKServerChangeToken+MHL.h"

@implementation CKServerChangeToken (MHL)

- (NSString *)mhl_loggingDescription{
    //NSString *s = [self.data base64EncodedStringWithOptions:0]; // private api
    return [NSString stringWithFormat:@"<ServerChangeToken %@>", self];
}

@end
