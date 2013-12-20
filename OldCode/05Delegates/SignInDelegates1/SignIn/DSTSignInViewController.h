#import <UIKit/UIKit.h>

@interface DSTSignInViewController : UIViewController
@end

@protocol DSTSignInViewControllerDelegate <NSObject>
- (void)signInViewControllerDidCancel:(DSTSignInViewController *)signInVC;
- (void)signInViewController:(DSTSignInViewController *)signInVC
                didEnterName:(NSString *)name;
@end

