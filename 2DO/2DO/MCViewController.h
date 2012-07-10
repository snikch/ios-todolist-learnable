//
//  MCViewController.h
//  2DO
//
//  Created by Mal Curtis on 10/07/12.
//  Copyright (c) 2012 Learnable. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddItemViewController.h"
#import "ToDoItem.h"
#import <CoreData/CoreData.h>

@interface MCViewController : UITableViewController <AddItemViewControllerDelegate,NSFetchedResultsControllerDelegate> {
    NSMutableArray *sampleToDos;
    ToDoItem *toDoItemInstance;
}
@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@end