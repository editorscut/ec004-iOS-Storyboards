//
//  DSTViewController.m
//  Colors
//
//  Created by Daniel Steinberg on 12/17/13.
//  Copyright (c) 2013 Dim Sum Thinking. All rights reserved.
//

#import "DSTViewController.h"
#import "DSTColorViewController.h"

@interface DSTViewController ()

@end

@implementation DSTViewController

- (void)showRedSceneForSegue:(UIStoryboardSegue *)segue
                      sender:(id)sender {
    DSTColorViewController *redController = segue.destinationViewController;
    redController.displayColor = [UIColor redColor];
    redController.displayText = [sender titleLabel].text;
}

- (void)showGreenSceneForSegue:(UIStoryboardSegue *)segue
                        sender:(id)sender {
    DSTColorViewController *greenController = segue.destinationViewController;
    greenController.displayColor = [UIColor greenColor];
    greenController.displayText = [sender titleLabel].text;
}

- (void)showBlueSceneForSegue:(UIStoryboardSegue *)segue
                       sender:(id)sender {
    DSTColorViewController *blueController = segue.destinationViewController;
    blueController.displayColor = [UIColor blueColor];
    blueController.displayText = [sender titleLabel].text;
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue
                  sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showGreenScene"]) {
        [self showGreenSceneForSegue:segue
                              sender:sender];
    } else if ([segue.identifier isEqualToString:@"showBlueScene"]) {
        [self showBlueSceneForSegue:segue
                             sender:sender];
    } else if ([segue.identifier isEqualToString:@"showRedScene"]) {
        [self showRedSceneForSegue:segue
                            sender:sender];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
