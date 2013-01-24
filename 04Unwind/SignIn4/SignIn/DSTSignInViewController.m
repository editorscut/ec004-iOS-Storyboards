#import "DSTSignInViewController.h"

@interface DSTSignInViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *signInField;
@end

@implementation DSTSignInViewController
- (void)prepareForSegue:(UIStoryboardSegue *)segue
                 sender:(id)sender {
    if ([segue.identifier isEqualToString:@"completeSignIn"]) {
        self.signInName = self.signInField.text;
    }
}
- (IBAction)cancelButtonTapped:(UIButton *)sender {}
- (IBAction)saveButtonTapped:(UIButton *)sender {}
-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    return YES;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.signInField becomeFirstResponder];
}
@end






