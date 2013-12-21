#import "DSTTableViewController.h"

@interface DSTTableViewController ()

@end

@implementation DSTTableViewController

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
