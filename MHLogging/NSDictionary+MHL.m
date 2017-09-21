//
//  NSDictionary+MHL.m
//  MHLogging
//
//  Created by Malcolm Hall on 20/09/2017.
//  Copyright © 2017 Malcolm Hall. All rights reserved.
//

#import "NSDictionary+MHL.h"

@implementation NSDictionary (MHL)

- (NSString *)mhl_prettyDescriptionWithTabLevel:(NSUInteger)level{
    NSMutableString *s = [NSMutableString stringWithString:@"{\n"];
    NSMutableString *tabs = [NSMutableString string];
    for(NSInteger i=0;i<=level;i++){
        [tabs appendString:@"\t"];
    }
    NSString *format = @"%@%@ = %@\n";
    [self enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        if([obj isKindOfClass:[NSDictionary class]]){
            NSDictionary *dict = (NSDictionary *)obj;
            [s appendFormat:format, tabs, key, [dict mhl_prettyDescriptionWithTabLevel:level + 1]];
            return;
        }
        [s appendFormat:format, tabs, key, obj];
    }];
    return s;
}

@end
