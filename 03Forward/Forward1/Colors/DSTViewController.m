#import "DSTViewController.h"

@interface DSTViewController ()

@end

@implementation DSTViewController
- (IBAction)redButtonTapped:(UIButton *)sender {
    UIViewController *redViewController = [[self storyboard] instantiateViewControllerWithIdentifier:@"redScene"];
    [self presentViewController:redViewController
                       animated:YES
                     completion:nil];
}
- (IBAction)greenButtonTapped:(UIButton *)sender {
    [self performSegueWithIdentifier:@"showGreenScene"
                              sender:self];
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
