//
//  FirstViewController.m
//  project3
//
//  Created by Willson Ayotte (NEW) on 5/21/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import "FirstViewController.h"
#import "DetailViewController.h"
#import "BusinessManager.h"
#import "TrackInfoClass.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"NASCAR Tracks", @"NASCAR Tracks");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}

- (void)viewDidLoad
{
    //hide doneBtn on load
    doneBtn.hidden = true;
    
    //set name and location of nascar tracks
    TrackInfoClass *track1 = [[TrackInfoClass alloc] initWithTitle:@"Atlanta Motor Speedway" loca:CLLocationCoordinate2DMake(33.383494f, -84.317856f)];
    TrackInfoClass *track2 = [[TrackInfoClass alloc] initWithTitle:@"Auto Club Speedway" loca:CLLocationCoordinate2DMake(34.08858f, -117.5f)];
    TrackInfoClass *track3 = [[TrackInfoClass alloc] initWithTitle:@"Bristol Motor Speedway" loca:CLLocationCoordinate2DMake(36.516172f, -82.256945f)];
    TrackInfoClass *track4 = [[TrackInfoClass alloc] initWithTitle:@"Charlotte Motor Speedway" loca:CLLocationCoordinate2DMake(35.350869f, -80.683589f)];
    TrackInfoClass *track5 = [[TrackInfoClass alloc] initWithTitle:@"Chicagoland Speedway" loca:CLLocationCoordinate2DMake(41.474833f, -88.057097f)];
    TrackInfoClass *track6 = [[TrackInfoClass alloc] initWithTitle:@"Darlington Raceway" loca:CLLocationCoordinate2DMake(34.29562f, -79.90596f)];
    TrackInfoClass *track7 = [[TrackInfoClass alloc] initWithTitle:@"Daytona International Speedway" loca:CLLocationCoordinate2DMake(29.185556f, -81.069444f)];
    TrackInfoClass *track8 = [[TrackInfoClass alloc] initWithTitle:@"Dover International Speedway" loca:CLLocationCoordinate2DMake(39.1896f, -75.53031f)];
    TrackInfoClass *track9 = [[TrackInfoClass alloc] initWithTitle:@"Homestead-Miami Speedway" loca:CLLocationCoordinate2DMake(25.45154f, -80.40859f)];
    TrackInfoClass *track10 = [[TrackInfoClass alloc] initWithTitle:@"Indianapolis Motor Speedway" loca:CLLocationCoordinate2DMake(39.798333f, -86.232778f)];
    TrackInfoClass *track11 = [[TrackInfoClass alloc] initWithTitle:@"Iowa Speedway" loca:CLLocationCoordinate2DMake(41.677778f, -93.014444f)];
    TrackInfoClass *track12 = [[TrackInfoClass alloc] initWithTitle:@"Kansas Speedway" loca:CLLocationCoordinate2DMake(39.115789f, -94.831061f)];
    TrackInfoClass *track13 = [[TrackInfoClass alloc] initWithTitle:@"Kentucky Speedway" loca:CLLocationCoordinate2DMake(38.70964f, -84.91624f)];
    TrackInfoClass *track14 = [[TrackInfoClass alloc] initWithTitle:@"Las Vegas Motor Speedway" loca:CLLocationCoordinate2DMake(36.27134f, -115.01112f)];
    TrackInfoClass *track15 = [[TrackInfoClass alloc] initWithTitle:@"Martinsville Speedway" loca:CLLocationCoordinate2DMake(36.633889f, -79.851111f)];
    TrackInfoClass *track16 = [[TrackInfoClass alloc] initWithTitle:@"Michigan International Speedway" loca:CLLocationCoordinate2DMake(42.0663f, -84.241439f)];
    TrackInfoClass *track17 = [[TrackInfoClass alloc] initWithTitle:@"New Hampshire Motor Speedway" loca:CLLocationCoordinate2DMake(43.36226f, -71.46125f)];
    TrackInfoClass *track18 = [[TrackInfoClass alloc] initWithTitle:@"Phoenix International Raceway" loca:CLLocationCoordinate2DMake(33.37475f, -112.31115f)];
    TrackInfoClass *track19 = [[TrackInfoClass alloc] initWithTitle:@"Pocono Raceway" loca:CLLocationCoordinate2DMake(41.05539f, -75.51152f)];
    TrackInfoClass *track20 = [[TrackInfoClass alloc] initWithTitle:@"Road America" loca:CLLocationCoordinate2DMake(43.7975f, -87.993889f)];
    TrackInfoClass *track21 = [[TrackInfoClass alloc] initWithTitle:@"Richmond International Raceway" loca:CLLocationCoordinate2DMake(37.59169f, -77.42091f)];
    TrackInfoClass *track22 = [[TrackInfoClass alloc] initWithTitle:@"Rockingham Speedway" loca:CLLocationCoordinate2DMake(34.974181f, -79.610419f)];
    TrackInfoClass *track23 = [[TrackInfoClass alloc] initWithTitle:@"Sonoma Raceway" loca:CLLocationCoordinate2DMake(38.16006f, -122.4594f)];
    TrackInfoClass *track24 = [[TrackInfoClass alloc] initWithTitle:@"Talladega Superspeedway" loca:CLLocationCoordinate2DMake(33.566961f, -86.066069f)];
    TrackInfoClass *track25 = [[TrackInfoClass alloc] initWithTitle:@"Texas Motor Speedway" loca:CLLocationCoordinate2DMake(33.03689f, -97.28309f)];
    TrackInfoClass *track26 = [[TrackInfoClass alloc] initWithTitle:@"Watkins Glen International" loca:CLLocationCoordinate2DMake(42.336944f, -76.927222f)];
    
    //create instance of business manager
    [BusinessManager CreateInstance];
    
    //Get instance
    BusinessManager *businessManager = [BusinessManager GetInstance];
    if(businessManager != nil)
    {
        NSMutableArray *tracks = businessManager.nascarTracks;
        if(tracks != nil)
        {
            //add tracks to view
            [tracks addObject:track1];
            [tracks addObject:track2];
            [tracks addObject:track3];
            [tracks addObject:track4];
            [tracks addObject:track5];
            [tracks addObject:track6];
            [tracks addObject:track7];
            [tracks addObject:track8];
            [tracks addObject:track9];
            [tracks addObject:track10];
            [tracks addObject:track11];
            [tracks addObject:track12];
            [tracks addObject:track13];
            [tracks addObject:track14];
            [tracks addObject:track15];
            [tracks addObject:track16];
            [tracks addObject:track17];
            [tracks addObject:track18];
            [tracks addObject:track19];
            [tracks addObject:track20];
            [tracks addObject:track21];
            [tracks addObject:track22];
            [tracks addObject:track23];
            [tracks addObject:track24];
            [tracks addObject:track25];
            [tracks addObject:track26];
        }
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //create instance of business manager
    [BusinessManager CreateInstance];
    //get instance
    BusinessManager *businessManager = [BusinessManager GetInstance];
    NSMutableArray *tracks = businessManager.nascarTracks;
    
    return [tracks count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //create cell identifier
    static NSString *CellIdentifier = @"Cell";
    
    //create instance of tableView
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(cell == nil)
    {
        //create instance of tableView cell
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    //create instance of business manager
    [BusinessManager CreateInstance];
    //get instance
    BusinessManager *businessManager = [BusinessManager GetInstance];
    NSMutableArray *tracks = businessManager.nascarTracks;
    
    //add text to cell
    cell.textLabel.text = [[tracks objectAtIndex:indexPath.row]trackName];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //create instance of business manager
    [BusinessManager CreateInstance];
    //get instance
    BusinessManager *businessManager = [BusinessManager GetInstance];
    NSMutableArray *tracks = businessManager.nascarTracks;
    
    //open detail view
    DetailViewController *detailView = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
    if(detailView != nil)
    {
        //add business name to view
        detailView.nascarTrackName = [[tracks objectAtIndex:indexPath.row]trackName];
        
        //add latitude and longitude to view
        detailView.trackLocation = [[tracks objectAtIndex:indexPath.row]exactLocation];
        [self presentViewController:detailView animated:TRUE completion:nil];
    }
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(editingStyle == UITableViewCellEditingStyleDelete)
    {
        //create instance of business manager
        [BusinessManager CreateInstance];
        //get instance
        BusinessManager *businessManager = [BusinessManager GetInstance];
        NSMutableArray *tracks = businessManager.nascarTracks;
        
        //delete row from array
        [tracks removeObjectAtIndex:indexPath.row];
        //delete row from table
        [businessTableView deleteRowsAtIndexPaths:[NSMutableArray arrayWithObject:indexPath] withRowAnimation:true];
    }
}

-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    //if delete button is clicked
    if(button.tag == 0)
    {
        //display done button
        doneBtn.hidden = false;
        //in edit mode
        [businessTableView setEditing:true];
        
    }
    //if done button is clicked
    else if(button.tag == 1)
    {
        //get out edit mode
        [businessTableView setEditing:false];
        //hide done button
        doneBtn.hidden = true;
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
