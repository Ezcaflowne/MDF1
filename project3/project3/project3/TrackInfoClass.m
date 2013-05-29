//
//  TrackInfoClass.m
//  project3
//
//  Created by Willson Ayotte (NEW) on 5/21/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import "TrackInfoClass.h"

@implementation TrackInfoClass

@synthesize trackName, exactLocation;

-(id)initWithTitle:(NSString*)name loca:(CLLocationCoordinate2D)loca
{
    if(self = [super init])
    {
        //set method values
        trackName = name;
        exactLocation = loca;
    }
    return self;
}
@end