#import "DSTViewController.h"

@interface DSTViewController ()
@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UITextView *todoListView;
@end

@implementation DSTViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.inputField becomeFirstResponder];
}
@end


