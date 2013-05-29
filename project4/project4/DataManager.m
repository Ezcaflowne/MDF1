//
//  DataManager.m
//  project4
//
//  Created by Willson Ayotte (NEW) on 5/29/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

// pulling in the data manager
#import "DataManager.h"

@implementation DataManager

// sync properties from my header file
@synthesize dataStore;
@synthesize myArray;

// implementing the static method
static DataManager* _shareDataManager = nil;

+(DataManager*)shareDataManager
{
    if (!_shareDataManager)
    {
        _shareDataManager = [[self alloc] init];
    }
    return _shareDataManager;
}

// establishing my container that maintains the XML info
-(id)init
{
    if ((self = [super init]))
    {
        dataStore = [[NSMutableData alloc] init];
        myArray = [[NSMutableArray alloc] init];
        
    }
    return self;
}

@end
