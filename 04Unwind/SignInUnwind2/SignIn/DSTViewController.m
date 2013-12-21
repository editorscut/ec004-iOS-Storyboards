#import "DSTViewController.h"

@interface DSTViewController ()
@property (weak, nonatomic) IBOutlet UILabel *greetingLabel;
@end

@implementation DSTViewController

- (IBAction)cancelSignIn:(UIStoryboardSegue *)segue {}
- (IBAction)completeSignIn:(UIStoryboardSegue *)segue {}

@end
