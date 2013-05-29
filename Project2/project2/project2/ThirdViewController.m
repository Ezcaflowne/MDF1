//
//  ThirdViewController.m
//  project2
//
//  Created by Willson Ayotte (NEW) on 5/13/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import "ThirdViewController.h"
#import "aboutClass.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        //add title to tab and nav bar
        self.title = NSLocalizedString(@"About", @"About");
        //add image to tab
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    //create mutable array for details
    detailArray = [[NSMutableArray alloc] init];
    //create instance of aboutClass
    aboutClass *developDetails = [[aboutClass alloc] initWithDetails:@"My name is Willson Ayotte. I have no prior experiance with coding, non what so ever. I currently work as an apartment complex maintenance supervisor in Las Vegas, NV since 2007. I think Vegas hot weather is what made me think about trying a different perfession, one thats in doors."];
    //add details to array
    [detailArray addObject:developDetails];
    //pass data to view
    aboutLabel.text = developDetails.details;
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
