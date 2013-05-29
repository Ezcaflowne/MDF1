//
//  DetailViewController.h
//  project2
//
//  Created by Willson Ayotte (NEW) on 5/13/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
{
    
}
@property (strong) IBOutlet UILabel *movieTitleLabel;
@property (strong) IBOutlet UILabel *reviewLabel;
@property (strong) IBOutlet UILabel *databaseLabel;

-(IBAction)onClick:(id)sender;

@end
