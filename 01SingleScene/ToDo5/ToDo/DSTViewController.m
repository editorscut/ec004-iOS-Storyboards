#import "DSTViewController.h"

@interface DSTViewController ()
@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UITextView *todoListView;
@end

@implementation DSTViewController

- (IBAction)addButtonTapped:(UIButton *)sender {
    self.todoListView.text = [NSString stringWithFormat:@"%@\n%@",
                                             self.inputField.text,
                                             self.todoListView.text];
    self.inputField.text = @"";
    [self.inputField resignFirstResponder];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.inputField becomeFirstResponder];
}
@end


