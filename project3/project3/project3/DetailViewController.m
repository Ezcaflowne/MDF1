//
//  DetailViewController.m
//  project3
//
//  Created by Willson Ayotte (NEW) on 5/21/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import "DetailViewController.h"
#import "MyMapAnnotations.h"
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface DetailViewController ()

@end

@implementation DetailViewController

@synthesize nascarTrackName,trackLocation,name;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    //create default span and zoom level
    MKCoordinateSpan span;
    span.latitudeDelta = 0.015f;
    span.longitudeDelta = 0.015f;
    
    //set location and span to the region of map shown on screen
    MKCoordinateRegion region;
    region.center = trackLocation;
    region.span = span;
    
    //add region to mapView
    detailMapView.region = region;
    
    //sets labels to array at index
    name.text = [NSString stringWithFormat:@"%@", nascarTrackName];
    latitude.text = [NSString stringWithFormat:@" %f", trackLocation.latitude];
    longitude.text = [NSString stringWithFormat:@" %f", trackLocation.longitude];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

-(void)viewDidAppear:(BOOL)animated
{
    //create annotations
    MyMapAnnotations *mapAnnotations = [[MyMapAnnotations alloc] initWithTitle:nascarTrackName coord:trackLocation];
    if(mapAnnotations != nil)
    {
        //add annotations to map view
        [detailMapView addAnnotation:mapAnnotations];
    }
    [super viewDidAppear:true];
}

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation
{
    //create pin annotation view
    MKPinAnnotationView *annView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"CustomPin"];
    if(annView != nil)
    {
        //animate pin drop
        annView.animatesDrop = true;
        //change pin color
        annView.pinColor = MKPinAnnotationColorGreen;
        annView.canShowCallout = YES;
    }
    return annView;
}

- (IBAction)changeMapType:(id)sender
{
    UIButton *mapTypeButton = (UIButton*)sender;
    //if action button is clicked
    if (mapTypeButton.tag == 1) {
//        UIAlertView *alert = [[UIAlertView alloc]
//                              initWithTitle: @"Hybrid View"
//                              message: @"Switching map to Hybrid View"
//                              delegate: nil
//                              cancelButtonTitle:@"OK"
//                              otherButtonTitles:nil];
//        [alert show];
//        [alert release];
    }
    //change map view type
    detailMapView.mapType = MKMapTypeHybrid;
    NSLog(@"%@ shown in Hybrid View", name.text);
}

- (IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    //if back button is clicked
    if(button.tag == 0)
    {
        //dismiss view
        [self dismissViewControllerAnimated:TRUE completion:nil];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

