//
//  GalleryViewController.m
//  photocloset
//
//  Created by Stephen Burke on 6/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "GalleryViewController.h"


@implementation GalleryViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
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
    
    // Add buttons to toolbar.
    UIBarButtonItem *slideshowButtonItem = [[UIBarButtonItem alloc]
                                            initWithBarButtonSystemItem:UIBarButtonSystemItemPlay
                                            target:self 
                                            action:@selector(playSlideshow:)]; 
    self.toolbarItems = [NSArray arrayWithObjects:
                         slideshowButtonItem,
                         nil];
    
    [slideshowButtonItem release];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)playSlideshow:(id)sender {
    NSLog(@"playSlideshow button pressed."); 
}


@end
