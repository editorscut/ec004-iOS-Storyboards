#import "DSTViewController.h"
#import "DSTSignInViewController.h"
#import "DSTGuest.h"

@interface DSTViewController ()
@property (weak, nonatomic) IBOutlet UILabel *greetingLabel;
@end

@implementation DSTViewController

- (IBAction)cancelSignIn:(UIStoryboardSegue *)segue {}
- (IBAction)completeSignIn:(UIStoryboardSegue *)segue {
    DSTGuest *guest = [DSTGuest sharedGuest];
    self.greetingLabel.text = guest.signInName;
}
@end