//
//  DataManager.h
//  project4
//
//  Created by Willson Ayotte (NEW) on 5/29/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataManager : NSObject
{
    // my main singalton variables
    NSMutableData *dataStore;
    NSMutableArray *myArray;
}

// singalton properties
@property (nonatomic, strong) NSMutableData *dataStore;
@property (nonatomic, strong) NSMutableArray *myArray;

// my static method
+(DataManager*)shareDataManager;

@end
