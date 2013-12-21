#import "DSTViewController.h"       
#import "DSTSignInViewController.h" 

@interface DSTViewController () <DSTSignInViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *greetingLabel;
@end

@implementation DSTViewController
- (void)prepareForSegue:(UIStoryboardSegue *)segue
                 sender:(id)sender{
    DSTSignInViewController *signInVC = segue.destinationViewController;
    signInVC.delegate = self;
}
- (void)signInViewControllerDidCancel:(DSTSignInViewController *)signInVC {
    [self dismissViewControllerAnimated:YES
                             completion:nil];
}
- (void)signInViewController:(DSTSignInViewController *)signInVC
                didEnterName:(NSString *)name{
    [self dismissViewControllerAnimated:YES
                             completion:nil];
    self.greetingLabel.text = name;
}
@end