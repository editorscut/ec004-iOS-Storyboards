//
//  DSTAppDelegate.h
//  OneThing
//
//  Created by Daniel Steinberg on 12/27/13.
//  Copyright (c) 2013 Dim Sum Thinking. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DSTAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
