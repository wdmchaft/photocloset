//
//  FolderViewController.h
//  photocloset
//
//  Created by Stephen Burke on 6/6/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FolderViewController : UIViewController
    <UITableViewDelegate, UITableViewDataSource> 
{

}

@property (nonatomic, retain) NSMutableArray *listData; 
@property (nonatomic, retain) IBOutlet UITableView *folderTableView; 

- (IBAction)addFolder:(id)sender;

@end
