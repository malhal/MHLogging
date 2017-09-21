//
//  MHLoggable.h
//  MHLogging
//
//  Created by Malcolm Hall on 20/09/2017.
//  Copyright © 2017 Malcolm Hall. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MHLogging/MHLDefines.h>

@protocol MHLoggable <NSObject>

- (NSString *)mhl_loggingIdentifier;
@optional
- (NSDictionary *)mhl_loggingValues;

@end

