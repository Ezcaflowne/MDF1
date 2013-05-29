//
//  DetailViewController.m
//  project4
//
//  Created by Willson Ayotte (NEW) on 5/29/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import "DetailViewController.h"
#import "Movie.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

// sync properties from my header file
@synthesize theDirectors;
@synthesize theGenres;
@synthesize theUrl;


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
    // establishing my string info to populate the second view on the UItableview
    NSString *formattedInformation = [NSString stringWithFormat:@"%@ %@ %@", theDirectors, theGenres, theUrl];
    
    detailTextView.text = formattedInformation;
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
