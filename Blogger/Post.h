//
//  Post.h
//  Blogger
//
//  Created by Chad Eubanks on 5/22/11.
//  Copyright 2011 The Code Boutique. All rights reserved.
//

@interface Post : NSObject {
    NSString *title;
    NSString *description;
    NSString *goalId;
    NSDate *createdAt;
    NSDate *updatedAt;
}

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *description;
@property (nonatomic, copy) NSString *postId;
@property (nonatomic, retain) NSDate *createdAt;
@property (nonatomic, retain) NSDate *updatedAt;

- (id)initWithDictionary:(NSDictionary *)dictionary;

+ (NSArray *)findAllRemote;

@end

