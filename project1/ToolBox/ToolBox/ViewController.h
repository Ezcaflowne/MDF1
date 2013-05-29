//
//  ViewController.h
//  ToolBox
//
//  Created by Willson Ayotte (NEW) on 5/8/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"
#import "TableViewController.h"

@interface ViewController : UIViewController <UITableViewDelegate>//, DetailViewDelegate>
{
    IBOutlet UITableView *toolTable;
    IBOutlet UIButton *deleteBtn;
    IBOutlet UIButton *doneBtn;
    
    NSMutableArray *toolBoxArray;
    NSMutableArray *toolKindArray;
    NSMutableArray *infoArray;
}
-(IBAction)onClick:(id)sender;
@end
