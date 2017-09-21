//
//  NSObject+MHL.h
//  MHLogging
//
//  Created by Malcolm Hall on 20/09/2017.
//  Copyright © 2017 Malcolm Hall. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CloudKit/CloudKit.h>
#import <MHLogging/MHLDefines.h>
#import <MHLogging/MHLoggable.h>

@interface NSObject (MHL) <MHLoggable>

+ (NSString *)mhl_loggingDescriptionFromLoggable:(id<MHLoggable>)loggable isPretty:(BOOL)isPretty;
- (NSString *)mhl_loggingDescription;
- (NSString *)mhl_prettyLoggingDescription;

@end

