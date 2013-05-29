//
//  BusinessManager.m
//  project3
//
//  Created by Willson Ayotte (NEW) on 5/21/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import "BusinessManager.h"

@implementation BusinessManager
@synthesize nascarTracks;

static BusinessManager *_instance = nil;

+(void)CreateInstance
{
    if(_instance == nil)
    {
        _instance = [[self alloc] init];
    }
}

+(BusinessManager*)GetInstance
{
    return _instance;
}

+(id)alloc
{
    _instance = [super alloc];
    return _instance;
}

-(id)init
{
    if(self = [super init])
    {
        //init code
        NSLog(@"singleton");
        
        nascarTracks = [[NSMutableArray alloc]init];
        
    }
    return self;
}




@end
