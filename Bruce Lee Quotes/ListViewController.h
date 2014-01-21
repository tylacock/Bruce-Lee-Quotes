//
//  ListViewController.h
//  Bruce Lee Quotes
//
//  Created by Lacock, Ty on 1/21/14.
//  Copyright (c) 2014 TWL. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Quotes.h"

@interface ListViewController : UITableViewController

@property (nonatomic, strong) NSString *plistCatPath;
@property (nonatomic, strong) NSMutableArray *quotesArray;

@end
