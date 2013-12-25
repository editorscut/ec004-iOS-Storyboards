#import "DSTViewController.h"
#import "DSTSignInViewController.h"

@interface DSTViewController ()
@property (weak, nonatomic) IBOutlet UILabel *greetingLabel;
@end

@implementation DSTViewController
- (IBAction)signInTapped:(UIButton *)sender {
    UIStoryboard *signInStoryboard = [UIStoryboard storyboardWithName:@"SignIn"
                                                               bundle:[NSBundle mainBundle]];
    DSTSignInViewController *signInVC = [signInStoryboard instantiateViewControllerWithIdentifier:@"SignInScene"];
    [self setBlocksFor:signInVC];
    [self presentViewController:signInVC
                       animated:YES
                     completion:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue
                 sender:(id)sender {
    DSTSignInViewController *signInVC = segue.destinationViewController;
    [self setBlocksFor:signInVC];
}

- (void)setBlocksFor:(DSTSignInViewController *)signInVC {
    signInVC.cancelTextEntry = ^{
        [self dismissViewControllerAnimated:YES
                                 completion:nil];
    };
    signInVC.completeTextEntry = ^(NSString *name){
        [self dismissViewControllerAnimated:YES
                                 completion:nil];
        self.greetingLabel.text = name;
    };
}

@end
