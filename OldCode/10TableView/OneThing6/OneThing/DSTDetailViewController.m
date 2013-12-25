#import "DSTDetailViewController.h"
#import "Event.h"

@interface DSTDetailViewController ()
@property (strong, nonatomic) UIPopoverController *masterPopoverController;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

@end

@implementation DSTDetailViewController

#pragma mark - Managing the detail item

- (void)setEvent:(id)newEvent {
    if (_event != newEvent) {
        _event = newEvent;
        
        // Update the view.
        [self configureView];
    }

    if (self.masterPopoverController != nil) {
        [self.masterPopoverController dismissPopoverAnimated:YES];
    }        
}

- (NSDateFormatter *)fullDateFormatter {
    NSDateFormatter *fullDateFormatter = [[NSDateFormatter alloc] init];
    fullDateFormatter.dateStyle = NSDateFormatterFullStyle;
    fullDateFormatter.timeStyle = NSDateFormatterNoStyle;
    return fullDateFormatter;
}
- (NSDateFormatter *)mediumTimeFormatter {
    NSDateFormatter *mediumTimeFormatter = [[NSDateFormatter alloc] init];
    mediumTimeFormatter.dateStyle = NSDateFormatterNoStyle;
    mediumTimeFormatter.timeStyle = NSDateFormatterMediumStyle;
    return mediumTimeFormatter;
}

- (void)configureView {
    if (self.event) {
        self.navigationItem.title = self.event.title;
        self.descriptionLabel.text = self.event.eventDescription;
        self.dateLabel.text
          = [[self fullDateFormatter] stringFromDate:self.event.timeStamp];
        self.timeLabel.text
          = [[self mediumTimeFormatter] stringFromDate:self.event.timeStamp];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Split view

- (void)splitViewController:(UISplitViewController *)splitController willHideViewController:(UIViewController *)viewController withBarButtonItem:(UIBarButtonItem *)barButtonItem forPopoverController:(UIPopoverController *)popoverController
{
    barButtonItem.title = NSLocalizedString(@"Master", @"Master");
    [self.navigationItem setLeftBarButtonItem:barButtonItem animated:YES];
    self.masterPopoverController = popoverController;
}

- (void)splitViewController:(UISplitViewController *)splitController willShowViewController:(UIViewController *)viewController invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem
{
    // Called when the view is shown again in the split view, invalidating the button and popover controller.
    [self.navigationItem setLeftBarButtonItem:nil animated:YES];
    self.masterPopoverController = nil;
}

@end
