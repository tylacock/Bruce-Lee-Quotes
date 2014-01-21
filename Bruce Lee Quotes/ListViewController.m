//
//  ListViewController.m
//  Bruce Lee Quotes
//
//  Created by Lacock, Ty on 1/21/14.
//  Copyright (c) 2014 TWL. All rights reserved.
//

#import "ListViewController.h"

@interface ListViewController ()

@end

@implementation ListViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.plistCatPath = [[NSBundle mainBundle] pathForResource:@"quotes" ofType:@"plist"];
    Quotes *quote = [[Quotes alloc] initWithContentsOfPlist:self.plistCatPath];
    self.quotesArray = quote.quoteArray;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

///////////////////////////////////////////////////////////////////////////////
#pragma mark -  Table View and Data
///////////////////////////////////////////////////////////////////////////////

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.quotesArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    NSString *my_quote = self.quotesArray[indexPath.row][@"quote"];
    cell.textLabel.text = my_quote;
//    NSLog(@"%@", my_quote);
//    NSLog(@"%@", self.quotesArray);
    
    return cell;
}


@end
