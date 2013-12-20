#import "DSTViewController.h"
#import "DSTSignInViewController.h"

@interface DSTViewController ()
@property (weak, nonatomic) IBOutlet UILabel *greetingLabel;
@end

@implementation DSTViewController
- (void)prepareForSegue:(UIStoryboardSegue *)segue
                 sender:(id)sender {
    DSTSignInViewController *signInVC = segue.destinationViewController;
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
