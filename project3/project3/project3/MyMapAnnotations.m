//
//  MyMapAnnotations.m
//  project3
//
//  Created by Willson Ayotte (NEW) on 5/21/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import "MyMapAnnotations.h"

@implementation MyMapAnnotations

@synthesize  title, coordinate;

-(id)initWithTitle:(NSString*)text coord:(CLLocationCoordinate2D)coord
{
    if((self = [super init]))
    {
        //set method values
        title = text;
        coordinate = coord;
    }
    return self;
}

@end