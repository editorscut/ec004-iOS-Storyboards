#import "DSTSignInViewController.h"

@interface DSTSignInViewController ()
@property (strong, nonatomic, readwrite) NSString *signInName;
@property (weak, nonatomic) IBOutlet UITextField *signInField;
@end

@implementation DSTSignInViewController
- (IBAction)saveButtonTapped:(UIButton *)sender {
}

- (IBAction)cancelButtonTapped:(UIButton *)sender {
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue
                 sender:(id)sender {
    if ([segue.identifier isEqualToString:@"completeSignIn"]) {
        self.signInName = self.signInField.text;
    }
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.signInField becomeFirstResponder];
}
@end
