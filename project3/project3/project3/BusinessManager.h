//
//  BusinessManager.h
//  project3
//
//  Created by Willson Ayotte (NEW) on 5/21/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface BusinessManager : NSObject
{
    NSMutableArray *nascarTracks;
    
    NSInteger *nascarTrackLatitude;
    NSInteger *nascarTrackLongitude;
}

+(void)CreateInstance;
+(BusinessManager*)GetInstance;

@property (nonatomic, strong)NSMutableArray *nascarTracks;

@end