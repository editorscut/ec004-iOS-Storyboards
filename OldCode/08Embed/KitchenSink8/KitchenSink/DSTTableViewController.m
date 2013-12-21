#import "DSTTableViewController.h"
#import "DSTDetailViewController.h"

@interface DSTTableViewController ()

@end

@implementation DSTTableViewController
- (void)prepareForSegue:(UIStoryboardSegue *)segue
                 sender:(id)sender {
    DSTDetailViewController *detailVC = segue.destinationViewController;
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    NSInteger greetingNumber = indexPath.row + 1;
    detailVC.titleText = [NSString stringWithFormat:@"%d", greetingNumber];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
    return 100;
}
- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"StandardCell";
    UITableViewCell *cell
      = [tableView dequeueReusableCellWithIdentifier:CellIdentifier
                                        forIndexPath:indexPath];
    cell.textLabel.text = @"Hello, World";
    cell.detailTextLabel.text
      = [NSString stringWithFormat:@"Greeting number %d",
                                         indexPath.row + 1];
    return cell;
}

@end
