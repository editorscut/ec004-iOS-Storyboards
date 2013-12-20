#import "DSTViewController.h"
#import "DSTSignInViewController.h"
#import "DSTGuest.h"

@interface DSTViewController ()
@property (weak, nonatomic) IBOutlet UILabel *greetingLabel;
@property (strong, nonatomic) DSTGuest *model;
@end

@implementation DSTViewController
- (void)prepareForSegue:(UIStoryboardSegue *)segue
                sender:(id)sender {
    DSTSignInViewController *signInVC = segue.destinationViewController;
    signInVC.model = self.model;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.model = [[DSTGuest alloc] init];
}
- (IBAction)cancelSignIn:(UIStoryboardSegue *)segue {
    NSLog(@"cancelSignIn: in DSTViewController");
}
- (IBAction)completeSignIn:(UIStoryboardSegue *)segue {
    NSLog(@"completeSignIn: in DSTViewController");
    self.greetingLabel.text = self.model.signInName;
}
@end
