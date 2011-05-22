//
//  Post.m
//  Blogger
//
//  Created by Chad Eubanks on 5/22/11.
//  Copyright 2011 The Code Boutique. All rights reserved.
//

#import "Post.h"
#import "SBJSON.h"

@implementation Post

@synthesize title;
@synthesize description;
@synthesize postId;
@synthesize createdAt;
@synthesize updatedAt;

- (void)dealloc {
    [title release];
    [description release];
    [goalId release];
    [createdAt release];
    [updatedAt release];
	[super dealloc];
}

- (id)initWithDictionary:(NSDictionary *)dictionary {
    if ((self = [super init])) {
        self.title      = [dictionary valueForKey:@"title"];
        self.description    = [dictionary valueForKey:@"description"];
        self.postId    = [dictionary valueForKey:@"id"];
        self.createdAt = [dictionary valueForKey:@"created_at"];
        self.updatedAt = [dictionary valueForKey:@"updated_at"];
    }
    return self;
}

+ (NSArray *)findAllRemote {
    NSURL *url = [NSURL URLWithString:@"http://localhost:3000/posts.json"];
    
    NSError *error = nil;
    
    NSString *jsonString = 
    [NSString stringWithContentsOfURL:url 
                             encoding:NSUTF8StringEncoding 
                                error:&error];
    
    NSMutableArray *posts = [NSMutableArray array];
    if (jsonString) {
        SBJSON *json = [[SBJSON alloc] init];    
        NSArray *results = [json objectWithString:jsonString error:&error];
        [json release];
        
        for (NSDictionary *dictionary in results) {
            Post *post = [[Post alloc] initWithDictionary:dictionary];
            [posts addObject:post];
            [post release];
        }
    }
    return posts;    
}

@end
