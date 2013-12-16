#import "DSTViewController.h"

@interface DSTViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UITextView *todoListView;
@end

@implementation DSTViewController

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    self.todoListView.text = [NSString stringWithFormat:@" %@\n%@", self.inputField.text, self.todoListView.text];
    self.inputField.text = @"";
    [self.inputField resignFirstResponder];
    return YES;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
