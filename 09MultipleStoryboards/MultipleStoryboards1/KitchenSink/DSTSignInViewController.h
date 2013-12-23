#import <UIKit/UIKit.h>

typedef void(^DSTDismissView)(void);
typedef void(^DSTTextInputHandler)(NSString *text);

@interface DSTSignInViewController : UIViewController
@property (copy, nonatomic) DSTDismissView cancelTextEntry;
@property (copy, nonatomic) DSTTextInputHandler completeTextEntry;
@end
