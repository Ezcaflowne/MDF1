//
//  DetailViewController.m
//  ToolBox
//
//  Created by Willson Ayotte (NEW) on 5/8/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController
//@synthesize delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        //delegate = nil;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    //if back button is clicked
    if(button.tag == 0)
    {
        [self dismissViewControllerAnimated:TRUE completion:nil];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_kind release];
    [super dealloc];
}
@end