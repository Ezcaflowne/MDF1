//
//  DetailViewController.h
//  project3
//
//  Created by Willson Ayotte (NEW) on 5/21/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface DetailViewController : UIViewController <MKMapViewDelegate>
{
    IBOutlet UILabel *name;
    IBOutlet UILabel *latitude;
    IBOutlet UILabel *longitude;
    
    IBOutlet MKMapView *detailMapView;
    
    NSArray *myMapAnnotations;
}

@property (strong) NSString *nascarTrackName;
@property (strong, nonatomic) UILabel *name;
@property CLLocationCoordinate2D trackLocation;

- (IBAction)changeMapType:(id)sender;
- (IBAction)onClick:(id)sender;
@end
