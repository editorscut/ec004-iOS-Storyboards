#import "DSTInputViewController.h"

@interface DSTInputViewController ()
@property (weak, nonatomic) IBOutlet UITextField *titleField;
@property (weak, nonatomic) IBOutlet UITextField *descriptionField;
@end

@implementation DSTInputViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.titleField becomeFirstResponder];
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue
                 sender:(id)sender {
    if ([segue.identifier isEqualToString:@"saveEntry"]) {
        self.title = self.titleField.text;
        self.eventDescription = self.descriptionField.text;
    }
}

@end
