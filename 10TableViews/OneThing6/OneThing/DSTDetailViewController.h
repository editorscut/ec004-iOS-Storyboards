#import <UIKit/UIKit.h>
@class DSTEvent;

@interface DSTDetailViewController : UITableViewController <UISplitViewControllerDelegate>
@property (strong, nonatomic) DSTEvent *event;
@end
