//
//  MBChkListParser.h
//  CessnaAviation
//
//  Created by Michael Baptist on 7/11/14.
//  Copyright (c) 2014 Michael Baptist. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MBChkListParser : NSObject

/**
 *  Parses a checklist or clist file that is formatted correctlty. This means commas separating the item and the actions, and * for each new section followed by a comma and a section title.
 *
 *  @param fileUrl The string url to the file to parse.
 *
 *  @return A dictionary where the key is the section title as a string and the value is an array of dictionaries where the key is item to check with a value of the action to take.
 */
- (NSDictionary *)parseChkListWithUrl:(NSString *)fileUrl;

@end
