//
//  FolderViewController.m
//  photocloset
//
//  Created by Stephen Burke on 6/6/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "FolderViewController.h"
#import "TableItem.h"

@implementation FolderViewController
@synthesize listData = _listData; 
@synthesize folderTableView = _folderTableView; 

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        _listData = [[NSMutableArray alloc] init]; 
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
    [_listData release]; 
    [_folderTableView release]; 
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title = @"Folders"; 
    // Deserialize the data & assign it to listData
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)addFolder:(id)sender {
    TableItem *item = [[TableItem alloc] set:@"New Folder" andFavorite:NO andItems:nil]; 
    [_listData addObject:item]; 
    [_folderTableView reloadData]; 
    [item release]; 
}

#pragma mark - 
#pragma mark Table View Data Source Methods
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_listData count]; 
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *RootFolderTableId = @"RootFolderTableId"; 
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:RootFolderTableId]; 
    if (cell == nil) {
        cell = [[[UITableViewCell alloc]
                 initWithStyle:UITableViewCellStyleDefault 
                 reuseIdentifier:RootFolderTableId] autorelease]; 
    }
    
    NSUInteger row = [indexPath row]; 
    
    TableItem* item = [_listData objectAtIndex:row];
    cell.textLabel.text = item.name; 
    return cell; 
}
@end
