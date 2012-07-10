//
//  MCAppDelegate.h
//  2DO
//
//  Created by Mal Curtis on 10/07/12.
//  Copyright (c) 2012 Learnable. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MCAppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;

@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;

- (NSURL *)applicationDocumentsDirectory;

@property (strong, nonatomic) UIWindow *window;

@end
