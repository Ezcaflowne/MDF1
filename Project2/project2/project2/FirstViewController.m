//
//  FirstViewController.m
//  project2
//
//  Created by Willson Ayotte (NEW) on 5/13/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import "FirstViewController.h"
#import "SecondNavViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        //add title to tab and nav bar
        self.title = NSLocalizedString(@"About Movies", @"Movies");
        //add image to tab bar
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}

- (void)viewDidLoad
{
    //change tint color of nav bar
    self.navigationController.navigationBar.tintColor = [UIColor blackColor];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)onClick:(id)sender
{
    //create instance of secondNavView
    SecondNavViewController *secondNavView = [[SecondNavViewController alloc] initWithNibName:@"SecondNavViewController" bundle:nil];
    if(secondNavView != nil)
    {
        //move to second nav view
        [self.navigationController pushViewController:secondNavView animated:true];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

