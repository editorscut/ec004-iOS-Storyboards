#import <UIKit/UIKit.h>
@class Event;

@interface DSTDetailViewController : UIViewController <UISplitViewControllerDelegate>
@property (strong, nonatomic) Event *event;
@end
