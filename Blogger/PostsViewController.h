//
//  RootViewController.h
//  Blogger
//
//  Created by Chad Eubanks on 5/22/11.
//  Copyright 2011 The Code Boutique. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PostsViewController : UITableViewController {
    NSMutableArray *posts;
}

@property (nonatomic, retain) NSArray *posts;


@end
