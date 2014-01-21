//
//  Quotes.h
//  Bruce Lee Quotes
//
//  Created by Lacock, Ty on 1/21/14.
//  Copyright (c) 2014 TWL. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Quotes : NSObject

@property (nonatomic, strong) NSMutableArray *quoteArray;
@property (nonatomic, strong) NSString *quoteBody;
@property (nonatomic, strong) NSString *quoteAuthor;

- (id)initWithContentsOfPlist:(NSString *)plist;
- (NSString *)quoteBodyText;

@end
