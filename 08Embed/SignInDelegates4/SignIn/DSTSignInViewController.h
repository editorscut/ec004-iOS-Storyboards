#import <UIKit/UIKit.h>
@protocol DSTSignInViewControllerDelegate;

@interface DSTSignInViewController : UIViewController
@property (weak, nonatomic) id<DSTSignInViewControllerDelegate>delegate;
@end

@protocol DSTSignInViewControllerDelegate <NSObject>
- (void)signInViewControllerDidCancel:(DSTSignInViewController *)signInVC;
- (void)signInViewController:(DSTSignInViewController *)signInVC
                didEnterName:(NSString *)name;
@end

