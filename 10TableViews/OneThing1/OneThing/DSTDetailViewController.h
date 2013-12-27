#import <UIKit/UIKit.h>
@class DSTEvent;

@interface DSTDetailViewController : UIViewController <UISplitViewControllerDelegate>
@property (strong, nonatomic) DSTEvent *event;
@end
