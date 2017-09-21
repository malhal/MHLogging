//
//  NSObject+MHL.h
//  MHLogging
//
//  Created by Malcolm Hall on 20/09/2017.
//  Copyright © 2017 Malcolm Hall. All rights reserved.
//

#import "NSObject+MHL.h"
#import "NSDictionary+MHL.h"

@implementation NSObject (MHL)

+ (NSString *)mhl_loggingDescriptionFromLoggable:(id<MHLLoggable>)loggable isPretty:(BOOL)isPretty{
    NSMutableString *s = [NSMutableString stringWithFormat:@"<%@ ", NSStringFromClass([loggable class])];
    NSString *identifier = [loggable mhl_loggingIdentifier];
    if(identifier){
        [s appendString:identifier];
    }else{
        [s appendFormat:@"%p", loggable];
    }
    NSString *format = @" %@=%@";
    [[loggable mhl_loggingValues] enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        if(isPretty){
            if([obj isKindOfClass:NSDictionary.class]){
                NSDictionary *dict = (NSDictionary *)obj;
                [s appendFormat:@"\t%@ = %@\n", key, [dict mhl_prettyDescriptionWithTabLevel:1]];
                return;
            }
        }
        [s appendFormat:format, key, obj];
    }];
    [s appendString:@">"];
    return s;
}

- (NSString *)mhl_loggingDescription{
    if([self conformsToProtocol:@protocol(MHLLoggable)]){
        return [self.class mhl_loggingDescriptionFromLoggable:self isPretty:NO];
    }
    return [self description];
}

- (NSString *)mhl_loggingIdentifier{
    return [NSString stringWithFormat:@"%p", self];
}

- (NSString *)mhl_prettyLoggingDescription{
    if([self conformsToProtocol:@protocol(MHLLoggable)]){
        return [self.class mhl_loggingDescriptionFromLoggable:self isPretty:YES];
    }
    return [self description];
}

@end
