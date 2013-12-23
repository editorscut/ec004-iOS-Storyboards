#import "DSTSignInViewController.h"

@interface DSTSignInViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *signInField;
@end

@implementation DSTSignInViewController
- (void)submitSignInName {
    if (self.completeTextEntry) {
        self.completeTextEntry(self.signInField.text);
    }
}
- (IBAction)saveButtonTapped:(UIButton *)sender {
    [self submitSignInName];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self submitSignInName];
    return YES;
}
- (IBAction)cancelButtonTapped:(UIButton *)sender {
    if (self.cancelTextEntry) {
        self.cancelTextEntry();
    }
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.signInField becomeFirstResponder];
}
@end
