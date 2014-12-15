//
//  MBChkListParser.m
//  AviationWB
//
//  Created by Michael Baptist on 7/11/14.
//  Copyright (c) 2014 Michael Baptist. All rights reserved.
//

#import "MBChkListParser.h"

@interface MBChkListParser()

@end


@implementation MBChkListParser

- (id)init
{
    self = [super init];
    if (self) {
        // more init stuff here.
    }
    return self;
}

/**
 *  Parses a checklist or clist file that is formatted correctlty. This means commas separating the item and the actions, and * for each new section followed by a comma and a section title.
 *
 *  @param fileUrl The string url to the file to parse.
 *
 *  @return A dictionary where the key is the section title as a string and the value is an array of dictionaries where the key is item to check with a value of the action to take.
 */
- (NSDictionary *)parseChkListWithUrl:(NSString *)fileUrl
{
    if (fileUrl != nil) {
        NSString *stream = [NSString stringWithContentsOfFile:fileUrl encoding:NSUTF8StringEncoding error:nil];
        NSArray *lines = [stream componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]];
        NSMutableDictionary *listData = [[NSMutableDictionary alloc] init];
        NSString *currentSection = @"";
        for (NSString *line in lines) {
            NSArray *tokens = [line componentsSeparatedByString:@","];
            if ([[tokens objectAtIndex:0] isEqualToString:@"*"]) {
                if (tokens.count > 1) {
                    currentSection = tokens[1];
                } else {
                    currentSection = tokens[0];
                }
                [listData setObject:[[NSMutableDictionary alloc] init] forKey:currentSection];
            } else {
                NSMutableDictionary *list = [listData objectForKey:currentSection];
                if (tokens.count > 1) {
                    [list setObject:[tokens objectAtIndex:1] forKey:[tokens objectAtIndex:0]];
                } else {
                    [list setObject:@"" forKey:[tokens objectAtIndex:0]];
                }
            }
        }
        return (NSDictionary *)listData;
    }
    return nil;
}


@end