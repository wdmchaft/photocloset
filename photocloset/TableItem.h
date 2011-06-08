//
//  TableItem.h
//  photocloset
//
//  Created by Stephen Burke on 6/7/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface TableItem : NSObject {

}

@property (retain) NSString *name; 
@property bool favorite; 
@property (retain) NSArray *items; 

- (TableItem*) set:(NSString*) name andFavorite:(bool) favorite andItems:(NSArray*) items; 

@end
