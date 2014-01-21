//
//  FirstViewController.h
//  Bruce Lee Quotes
//
//  Created by Lacock, Ty on 1/21/14.
//  Copyright (c) 2014 TWL. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController

@property (nonatomic, strong) NSMutableArray *quotesArray;
@property (weak, nonatomic) IBOutlet UITextView *quoteField;

- (IBAction)getRandomQuote:(UIButton *)sender;

@end
