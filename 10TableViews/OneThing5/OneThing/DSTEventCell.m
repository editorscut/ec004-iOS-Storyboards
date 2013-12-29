//
//  DSTEventCell.m
//  OneThing
//
//  Created by Daniel Steinberg on 12/28/13.
//  Copyright (c) 2013 Dim Sum Thinking. All rights reserved.
//

#import "DSTEventCell.h"

@implementation DSTEventCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
