//
//  SecondViewController.h
//  project3
//
//  Created by Willson Ayotte (NEW) on 5/21/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface SecondViewController : UIViewController <MKMapViewDelegate>
{
    IBOutlet MKMapView *secondMapView;
    
    BOOL race;
}

@end