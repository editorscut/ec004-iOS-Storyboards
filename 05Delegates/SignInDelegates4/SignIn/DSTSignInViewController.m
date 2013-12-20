#import "DSTSignInViewController.h"

@interface DSTSignInViewController ()
@property (weak, nonatomic) IBOutlet UITextField *signInField;
@end

@implementation DSTSignInViewController
- (void)submitSignInName {
    [self.delegate signInViewController:self
                           didEnterName:self.signInField.text];
}
- (IBAction)saveButtonTapped:(UIButton *)sender {
    [self submitSignInName];
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self submitSignInName];
    return YES;
}

- (IBAction)cancelButtonTapped:(UIButton *)sender {
    [self.delegate signInViewControllerDidCancel:self];
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.signInField becomeFirstResponder];
}

@end
