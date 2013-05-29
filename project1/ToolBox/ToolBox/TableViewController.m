//
//  TableViewController.m
//  ToolBox
//
//  Created by Willson Ayotte (NEW) on 5/8/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import "TableViewController.h"

@implementation TableViewController
@synthesize toolName;
@synthesize kindLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

@end