//
//  DetailViewController.h
//  ToolBox
//
//  Created by Willson Ayotte (NEW) on 5/8/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
{
    IBOutlet UIButton *backBtn;
}
-(IBAction)onClick:(id)sender;

@property (nonatomic, strong) IBOutlet UILabel *toolLabel;
@property (nonatomic, strong) IBOutlet UILabel *kind;
@property (nonatomic, strong) IBOutlet UILabel *info;
@end