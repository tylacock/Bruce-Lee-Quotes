//
//  FirstViewController.m
//  Bruce Lee Quotes
//
//  Created by Lacock, Ty on 1/21/14.
//  Copyright (c) 2014 TWL. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
///////////////////////////////////////////////////////////////////////////////
#pragma mark -  Life Cycle
///////////////////////////////////////////////////////////////////////////////
- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *plistCatPath = [[NSBundle mainBundle] pathForResource:@"quotes" ofType:@"plist"];
    self.quotesArray= [NSMutableArray arrayWithContentsOfFile:plistCatPath];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


///////////////////////////////////////////////////////////////////////////////
#pragma mark -  Application Methods
///////////////////////////////////////////////////////////////////////////////
- (IBAction)getRandomQuote:(UIButton *)sender {
    [self randomQouteReturn];
}

- (void)randomQouteReturn {
    int array_tot = [self.quotesArray count];
    int index = (arc4random() % array_tot);
    
    NSString *my_quote = self.quotesArray[index][@"quote"];
    
    self.quoteField.text = [NSString stringWithFormat:@"\n\n\n\n%@",  my_quote];
    
}
@end
