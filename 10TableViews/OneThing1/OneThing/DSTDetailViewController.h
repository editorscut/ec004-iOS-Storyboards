//
//  DSTDetailViewController.h
//  OneThing
//
//  Created by Daniel Steinberg on 12/27/13.
//  Copyright (c) 2013 Dim Sum Thinking. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DSTDetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
