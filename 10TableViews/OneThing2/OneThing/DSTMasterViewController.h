//
//  DSTMasterViewController.h
//  OneThing
//
//  Created by Daniel Steinberg on 12/27/13.
//  Copyright (c) 2013 Dim Sum Thinking. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DSTDetailViewController;

#import <CoreData/CoreData.h>

@interface DSTMasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) DSTDetailViewController *detailViewController;

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
