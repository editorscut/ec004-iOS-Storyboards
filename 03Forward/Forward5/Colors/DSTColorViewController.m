//
//  DSTColorViewController.m
//  Colors
//
//  Created by Daniel Steinberg on 12/18/13.
//  Copyright (c) 2013 Dim Sum Thinking. All rights reserved.
//

#import "DSTColorViewController.h"

@interface DSTColorViewController ()
@property (weak, nonatomic) IBOutlet UILabel *colorLabel;
@end

@implementation DSTColorViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.view.backgroundColor = self.displayColor;
    self.colorLabel.text = self.displayText;
    self.colorLabel.textColor = self.displayColor;
}

@end
