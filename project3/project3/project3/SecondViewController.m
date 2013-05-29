//
//  SecondViewController.m
//  project3
//
//  Created by Willson Ayotte (NEW) on 5/21/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import "SecondViewController.h"
#import "BusinessManager.h"
#import "MyMapAnnotations.h"
#import "DetailViewController.h"
#import "TrackInfoClass.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"All NASCAR Tracks", @"All NASCAR Tracks");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}

- (void)viewDidLoad
{
    //create instance of business manager
    [BusinessManager CreateInstance];
    
    //Get instance
    BusinessManager *businessManager = [BusinessManager GetInstance];
    if(businessManager != nil)
    {
        //create default span and zoom level
        MKCoordinateSpan span;
        span.latitudeDelta = 27.0f;
        span.longitudeDelta = 27.0f;
        
        //set location of map
        CLLocationCoordinate2D location;
        location.latitude = 41.508577;
        location.longitude = -97.523438;
        
        //set location and span to the region of map shown on screen
        MKCoordinateRegion region;
        region.center = location;
        region.span = span;
        
        //add region to mapView
        secondMapView.region = region;
        //showing user location in relation to nascar tracks 
        secondMapView.showsUserLocation = YES;
        
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated
{
    //create instance of business manager
    [BusinessManager CreateInstance];
    //get instance
    BusinessManager *businessManager = [BusinessManager GetInstance];
    NSMutableArray *trackAnnotations = businessManager.nascarTracks;
    NSLog(@"%@", trackAnnotations);
    
    //if tracks are deleted from tableView (changes are made)
    if(race == NO)
    {
        if([trackAnnotations count] > 0)
        {
            //remove the annotations from map
            //update/sync data
            [secondMapView removeAnnotations:secondMapView.annotations];
        }
    }
    else if (race == YES)
    {
        race = NO;
    }
    
    //every track has an annotation placed on the secondMapView
    for (int i = 0; i < [trackAnnotations count]; i++)
    {
        //create an annotation for every nascar track
        MyMapAnnotations *ann = [[MyMapAnnotations alloc] initWithTitle:[[trackAnnotations objectAtIndex:i]trackName ]coord:[[trackAnnotations objectAtIndex:i]exactLocation]];
        NSLog(@"name = %@, lat = %f, long = %f", ann.title, ann.coordinate.latitude, ann.coordinate.longitude);
        if(ann != nil)
        {
            //add annotation to map
            [secondMapView addAnnotation:ann];
        }
    }
    
    [super viewWillAppear:true];
}

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation
{
    //create pin view
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


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

