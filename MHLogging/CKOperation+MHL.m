//
//  CKOperation+MHL.m
//  MHLogging
//
//  Created by Malcolm Hall on 20/09/2017.
//  Copyright © 2017 Malcolm Hall. All rights reserved.
//

#import "CKOperation+MHL.h"

@implementation CKOperation (MHL)

- (NSString *)mhl_loggingIdentifier{
    return self.operationID;
}

- (NSDictionary *)mhl_loggingValues{
    NSMutableDictionary *dict = super.mhl_loggingValues.mutableCopy;
//    if(self.metrics.cloudKitMetrics.duration > 0){ // private API
//        dict[@"duration"] = @(self.metrics.cloudKitMetrics.duration);
//    }
    return dict;
}

@end
