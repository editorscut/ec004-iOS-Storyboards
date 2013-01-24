#import "DSTColorViewController.h"

@interface DSTColorViewController ()
@property (weak, nonatomic) IBOutlet UILabel *colorLabel;

@end

@implementation DSTColorViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.view.backgroundColor = self.displayColor;
    self.colorLabel.text = self.displayText;
    self.colorLabel.textColor = self.displayColor;
}

@end
