#import "DSTViewController.h"

@interface DSTViewController ()

@end

@implementation DSTViewController


- (IBAction)redButtonTapped:(UIButton *)sender {
    UIViewController *redViewController
        = [[self storyboard]
           instantiateViewControllerWithIdentifier:@"redScene"];
    [self presentViewController:redViewController
                       animated:YES
                     completion:nil];
}

@end
