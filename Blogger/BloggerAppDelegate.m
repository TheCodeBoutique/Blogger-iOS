//
//  BloggerAppDelegate.m
//  Blogger
//
//  Created by Chad Eubanks on 5/22/11.
//  Copyright 2011 The Code Boutique. All rights reserved.
//

#import "BloggerAppDelegate.h"

#import "PostsViewController.h"

@implementation BloggerAppDelegate

@synthesize window;
@synthesize navigationController;

#pragma mark -
#pragma mark Memory management

- (void)dealloc {
	[navigationController release];
	[window release];
	[super dealloc];
}

#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {	
	[window addSubview:[navigationController view]];
    [window makeKeyAndVisible];
	return YES;
}

- (void)applicationWillTerminate:(UIApplication *)application {
	// Save data if appropriate
}

@end

