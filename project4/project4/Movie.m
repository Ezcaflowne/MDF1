//
//  Movie.m
//  project4
//
//  Created by Willson Ayotte (NEW) on 5/29/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//


// pulling in my class file
#import "Movie.h"

@implementation Movie

// sync properties from my header file
@synthesize directors;
@synthesize genres;
@synthesize imdb_url;
@synthesize titleName;

// method that gives the properties from my XML file value
-(id)initWithName:(NSString*)owner genre:(NSString*)type url:(NSString*)link title:(NSString *)compname
{
    if ((self = [super init]))
    {
        directors = owner;
        genres = type;
        imdb_url = link;
        titleName = compname;
    }
    return self;
}

@end
