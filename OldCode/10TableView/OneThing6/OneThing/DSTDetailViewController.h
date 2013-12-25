#import <UIKit/UIKit.h>
@class Event;

@interface DSTDetailViewController : UITableViewController
                                     <UISplitViewControllerDelegate>
@property (strong, nonatomic) Event *event;
@end
