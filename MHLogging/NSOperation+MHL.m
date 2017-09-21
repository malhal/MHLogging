//
//  NSOperation+MHL.m
//  MHLogging
//
//  Created by Malcolm Hall on 20/09/2017.
//  Copyright © 2017 Malcolm Hall. All rights reserved.
//

#import "NSOperation+MHL.h"

@implementation NSOperation (MHL) 

- (NSString *)mhl_loggingIdentifier{
    return [NSString stringWithFormat:@"%p", self];
}

- (NSDictionary *)mhl_loggingValues{
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    if(self.name){
        dict[@"name"] = self.name;
    }
    if(self.isExecuting){
        dict[@"isExecuting"] = @(self.isExecuting);
    }
    if(self.isFinished){
        dict[@"isFinished"] = @(self.isFinished);
    }
    return dict;
}

@end
