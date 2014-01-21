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
    [self startUp];
    [self randomQouteReturn];
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
    Quotes *quote = [[Quotes alloc] initWithContentsOfPlist:self.plistCatPath];
    int array_tot = [quote.quoteArray count];
    int index = (arc4random() % array_tot);
    
    NSString *my_quote = quote.quoteArray[index][@"quote"];
    self.quoteField.text = [NSString stringWithFormat:@"\n\n\n\n%@",  my_quote];
    
}

- (void)startUp {
    self.plistCatPath = [[NSBundle mainBundle] pathForResource:@"quotes" ofType:@"plist"];
    
}
@end
