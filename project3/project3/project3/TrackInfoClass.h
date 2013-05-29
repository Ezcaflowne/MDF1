//
//  TrackInfoClass.h
//  project3
//
//  Created by Willson Ayotte (NEW) on 5/21/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface TrackInfoClass : NSObject
{
}

-(id)initWithTitle:(NSString*)name loca:(CLLocationCoordinate2D)loca;

@property (nonatomic, strong) NSString *trackName;
@property (nonatomic, readonly) CLLocationCoordinate2D exactLocation;
@end
