#import "DSTSignInViewController.h"

@interface DSTSignInViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *signInField;
@end

@implementation DSTSignInViewController
- (IBAction)cancelButtonTapped:(UIButton *)sender {
    [self.delegate signInViewControllerDidCancel:self];
}
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
@end






