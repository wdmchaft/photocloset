//
//  TableItem.m
//  photocloset
//
//  Created by Stephen Burke on 6/7/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TableItem.h"


@implementation TableItem

@synthesize name;  
@synthesize favorite; 
@synthesize items; 

- (TableItem*) set:(NSString*) name_ andFavorite:(bool) favorite_ andItems:(NSArray*) items_ {
    self = [super init];
    if(self) {
        self.name = name_; 
        self.favorite = favorite_; 
        self.items = items_; 
    }
    return self;
}

- (void) dealloc {
    [super dealloc]; 
    [name release]; 
    [items release]; 
}

@end
