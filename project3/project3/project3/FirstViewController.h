//
//  FirstViewController.h
//  project3
//
//  Created by Willson Ayotte (NEW) on 5/21/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface FirstViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
    IBOutlet UITableView *businessTableView;
    IBOutlet UIScrollView *scrollView;
    
    IBOutlet UIButton *deleteBtn;
    IBOutlet UIButton *doneBtn;
}

-(IBAction)onClick:(id)sender;
@end