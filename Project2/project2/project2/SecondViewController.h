//
//  SecondViewController.h
//  project2
//
//  Created by Willson Ayotte (NEW) on 5/13/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
    IBOutlet UITableView *movieTableView;
    
    NSMutableArray *movieTitleArray;
    NSMutableArray *infoArray;
    NSString *databaseURL;
}
@end
