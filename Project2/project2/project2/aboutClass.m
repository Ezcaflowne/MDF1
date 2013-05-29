//
//  aboutClass.m
//  project2
//
//  Created by Willson Ayotte (NEW) on 5/13/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import "aboutClass.h"

@implementation aboutClass
@synthesize details;

-(id)initWithDetails:(NSString *)devDetails
{
    self = [super init];
    if(self != nil)
    {
        details = devDetails;
    }
    return self;
}
@end
