#import "DSTSignInViewController.h"

@interface DSTSignInViewController ()
@property (weak, nonatomic) IBOutlet UITextField *signInField;
@end

@implementation DSTSignInViewController
- (IBAction)saveButtonTapped:(UIButton *)sender {
}

- (IBAction)cancelButtonTapped:(UIButton *)sender {
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.signInField becomeFirstResponder];
}
@end
