#import "DSTViewController.h"
#import "DSTSignInViewController.h"

@interface DSTViewController ()
@property (weak, nonatomic) IBOutlet UILabel *greetingLabel;
@end

@implementation DSTViewController
- (IBAction)cancelSignIn:(UIStoryboardSegue *)segue {
    NSLog(@"cancelSignIn: in DSTViewController");
}
- (IBAction)completeSignIn:(UIStoryboardSegue *)segue {
    NSLog(@"completeSignIn: in DSTViewController");
    DSTSignInViewController *signInVC = segue.sourceViewController;
    self.greetingLabel.text = signInVC.signInName;
}
@end
