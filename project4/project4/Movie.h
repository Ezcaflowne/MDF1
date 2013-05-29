//
//  Movie.h
//  project4
//
//  Created by Willson Ayotte (NEW) on 5/29/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Movie : NSObject
{
    // setting up the strings to be used from my XML file
    NSString *directors;
    NSString *genres;
    NSString *imdb_url;
    NSString *titleName;
}

// setting up the properties to from my XML file
@property (nonatomic, weak) NSString *directors;
@property (nonatomic, weak) NSString *genres;
@property (nonatomic, weak) NSString *imdb_url;
@property (nonatomic, weak) NSString *titleName;

// creating the method to be used to compose the above details
-(id)initWithName:(NSString*)owner genre:(NSString*)loc url:(NSString*)link title:(NSString*)compname;

@end