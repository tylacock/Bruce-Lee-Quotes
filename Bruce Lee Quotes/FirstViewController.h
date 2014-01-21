//
//  FirstViewController.h
//  Bruce Lee Quotes
//
//  Created by Lacock, Ty on 1/21/14.
//  Copyright (c) 2014 TWL. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Quotes.h"

@interface FirstViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *quoteField;
@property (nonatomic, strong) NSString *plistCatPath;


- (IBAction)getRandomQuote:(UIButton *)sender;

@end
