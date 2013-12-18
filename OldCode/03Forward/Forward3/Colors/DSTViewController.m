#import "DSTViewController.h"

@interface DSTViewController ()

@end

@implementation DSTViewController

- (IBAction)greenButtonTapped:(UIButton *)sender {
    [self performSegueWithIdentifier:@"showGreenScene"
                              sender:sender];
}

- (IBAction)redButtonTapped:(UIButton *)sender {
    UIViewController *redViewController
        = [[self storyboard]
                 instantiateViewControllerWithIdentifier:@"redScene"];
    redViewController.view.backgroundColor = [UIColor redColor];
    [self presentViewController:redViewController
                       animated:YES
                     completion:nil];
}
- (void) prepareForSegue:(UIStoryboardSegue *)segue
                 sender:(id)sender {
    UIViewController *newViewController = segue.destinationViewController;
    if ([segue.identifier isEqualToString:@"showGreenScene"]) {
        newViewController.view.backgroundColor = [UIColor greenColor];
    } else if ([segue.identifier isEqualToString:@"showBlueScene"]) {
        newViewController.view.backgroundColor = [UIColor blueColor];
    }
}

@end
