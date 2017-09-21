//
//  CKFetchRecordZoneChangesOperation+MHL.h
//  MHLogging
//
//  Created by Malcolm Hall on 20/09/2017.
//  Copyright © 2017 Malcolm Hall. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import <MHLogging/MHLDefines.h>
#import <MHLogging/CKDatabaseOperation+MHL.h>

@interface CKFetchRecordZoneChangesOperation (MHL)

- (NSString *)mhl_shortLoggingDescription;

@end

