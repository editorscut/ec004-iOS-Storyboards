#import "DSTViewController.h"
#import "DSTColorViewController.h"

@interface DSTViewController ()
@end

@implementation DSTViewController

- (void) prepareForSegue:(UIStoryboardSegue *)segue
                 sender:(id)sender {
    DSTColorViewController *target = segue.destinationViewController;
    target.displayText = [sender titleLabel].text;
    if ([segue.identifier isEqualToString:@"showGreenScene"]) {
        target.displayColor = [UIColor greenColor];
    } else if ([segue.identifier isEqualToString:@"showBlueScene"]) {
        target.displayColor = [UIColor blueColor];
    } else if ([segue.identifier isEqualToString:@"showRedScene"]) {
        target.displayColor = [UIColor redColor];
    }
}
@end