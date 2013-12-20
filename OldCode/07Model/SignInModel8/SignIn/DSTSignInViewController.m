#import "DSTSignInViewController.h"
#import "DSTGuest.h"

@interface DSTSignInViewController ()<UITextFieldDelegate>
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
-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self performSegueWithIdentifier:@"completeSignIn"
                              sender:textField];
    return YES;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.signInField becomeFirstResponder];
}
@end






