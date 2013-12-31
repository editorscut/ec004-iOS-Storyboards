#import "DSTViewController.h"

@interface DSTViewController ()

@end

@implementation DSTViewController
- (IBAction)redButtonTapped:(UIButton *)sender {
    UIViewController *redViewController = [[self storyboard] instantiateViewControllerWithIdentifier:@"redScene"];
    redViewController.view.backgroundColor = [UIColor redColor];
    [self presentViewController:redViewController
                       animated:YES
                     completion:nil];
}
- (IBAction)greenButtonTapped:(UIButton *)sender {
    [self performSegueWithIdentifier:@"showGreenScene"
                              sender:self];
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue
                 sender:(id)sender {
    UIViewController *newViewController = segue.destinationViewController;
    if ([segue.identifier isEqualToString:@"showGreenScene"]) {
        newViewController.view.backgroundColor = [UIColor greenColor];
    } else if ([segue.identifier isEqualToString:@"showBlueScene"]) {
        newViewController.view.backgroundColor = [UIColor blueColor];
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
