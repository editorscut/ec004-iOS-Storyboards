#import "DSTViewController.h"

@interface DSTViewController ()

@end

@implementation DSTViewController


- (void)prepareForSegue:(UIStoryboardSegue *)segue
                 sender:(id)sender {
    UIViewController *newViewController = segue.destinationViewController;
    if ([segue.identifier isEqualToString:@"showGreenScene"]) {
        newViewController.view.backgroundColor = [UIColor greenColor];
    } else if ([segue.identifier isEqualToString:@"showBlueScene"]) {
        newViewController.view.backgroundColor = [UIColor blueColor];
    } else if ([segue.identifier isEqualToString:@"showRedScene"]) {
        newViewController.view.backgroundColor = [UIColor redColor];
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
