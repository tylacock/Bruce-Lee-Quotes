//
//  Quotes.m
//  Bruce Lee Quotes
//
//  Created by Lacock, Ty on 1/21/14.
//  Copyright (c) 2014 TWL. All rights reserved.
//

#import "Quotes.h"

@implementation Quotes

- (id)initWithContentsOfPlist:(NSString *)plist {
    if ((self = [super init])) {
        self.quoteArray = [[NSMutableArray alloc] initWithContentsOfFile:plist];
    }
    
    return self;
}

- (NSString *)quoteBodyText {
    int array_tot = [self.quoteArray count];
    int index = (arc4random() % array_tot);
    
    NSString *my_quote = self.quoteArray[index][@"quote"];
    return my_quote;
}



@end
