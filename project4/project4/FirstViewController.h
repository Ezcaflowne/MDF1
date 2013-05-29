//
//  FirstViewController.h
//  project4
//
//  Created by Willson Ayotte (NEW) on 5/28/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

// importing the Movie class
#import <UIKit/UIKit.h>
#import "movie.h"

// Pulling in the delegates
@interface FirstViewController : UIViewController <NSURLConnectionDataDelegate, NSXMLParserDelegate, NSURLConnectionDelegate, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate>
{
    // outlets - parser - request - mutableData - strings variable setup
    IBOutlet UITableView *myTableView;
    
    NSXMLParser *xmlParser;
    NSURLRequest *request;
    NSURL *url;
    NSURLConnection *connection;
    NSMutableData *requestData;
    NSMutableString *currentValue;
    Movie *myMovie;
    int counterInt;
    
}




@end
