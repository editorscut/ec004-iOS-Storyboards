#import "DSTSignInViewController.h"
#import "DSTGuest.h"

@interface DSTSignInViewController ()
@property (weak, nonatomic) IBOutlet UITextField *signInField;
@end

@implementation DSTSignInViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue
                 sender:(id)sender {
    if ([segue.identifier isEqualToString:@"completeSignIn"]) {
        DSTGuest *guest = [DSTGuest sharedGuest];
        guest.signInName = self.signInField.text;
    }
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.signInField becomeFirstResponder];
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self performSegueWithIdentifier:@"completeSignIn"
                              sender:textField];
    return YES;
}
@end
