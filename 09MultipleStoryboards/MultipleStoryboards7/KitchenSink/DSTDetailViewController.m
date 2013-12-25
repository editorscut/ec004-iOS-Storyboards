#import "DSTDetailViewController.h"
#import "DSTViewController.h"

@interface DSTDetailViewController ()
@end

@implementation DSTDetailViewController

- (IBAction)nextButtonTapped:(UIBarButtonItem *)nextButton {
    UIStoryboard *signInStoryboard = [UIStoryboard storyboardWithName:@"SignIn"
                                                               bundle:[NSBundle mainBundle]];
    DSTViewController *viewController = [signInStoryboard instantiateInitialViewController];
    [self.navigationController pushViewController:viewController
                                         animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = self.titleText;
}

@end
