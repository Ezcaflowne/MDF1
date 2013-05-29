//
//  DetailViewController.h
//  project4
//
//  Created by Willson Ayotte (NEW) on 5/29/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
{
    // outlet - string variable setup
    IBOutlet UITextView *detailTextView;
    NSString *theDirectors;
    NSString *theGenres;
    NSString *theUrl;
}

// property setups
@property (nonatomic, weak) NSString *theDirectors;
@property (nonatomic, weak) NSString *theGenres;
@property (nonatomic, weak) NSString *theUrl;


@end
