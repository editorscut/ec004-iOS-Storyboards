#import "DSTViewController.h"
#import "DSTSignInViewController.h"
#import "DSTGuest.h"

@interface DSTViewController ()
@property (weak, nonatomic) IBOutlet UILabel *greetingLabel;
@property (strong, nonatomic) DSTGuest *model;
@end

@implementation DSTViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.model = [[DSTGuest alloc] init];
}

- (IBAction)cancelSignIn:(UIStoryboardSegue *)segue {
    NSLog(@"cancelSignIn: in DSTViewController");
}
- (IBAction)completeSignIn:(UIStoryboardSegue *)segue {
    NSLog(@"completeSignIn: in DSTViewController");
    
}

@end
