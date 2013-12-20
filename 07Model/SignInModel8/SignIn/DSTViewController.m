#import "DSTViewController.h"
#import "DSTGuest.h"

@interface DSTViewController ()
@property (weak, nonatomic) IBOutlet UILabel *greetingLabel;
@end

@implementation DSTViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)cancelSignIn:(UIStoryboardSegue *)segue {
    NSLog(@"cancelSignIn: in DSTViewController");
}
- (IBAction)completeSignIn:(UIStoryboardSegue *)segue {
    NSLog(@"completeSignIn: in DSTViewController");
    DSTGuest *guest = [DSTGuest sharedGuest];
    self.greetingLabel.text = guest.signInName;
}

@end
