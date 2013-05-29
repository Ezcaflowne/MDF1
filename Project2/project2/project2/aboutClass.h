//
//  aboutClass.h
//  project2
//
//  Created by Willson Ayotte (NEW) on 5/13/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import <Foundation/Foundation.h>

@interface aboutClass : NSObject
{
    NSString *details;
}
-(id)initWithDetails:(NSString *)devDetails;

@property (nonatomic, readonly)NSString *details;

@end
