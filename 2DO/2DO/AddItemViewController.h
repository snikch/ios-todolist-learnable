//
//  AddItemViewController.h
//  2DO
//
//  Created by Mal Curtis on 10/07/12.
//  Copyright (c) 2012 Learnable. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDoItem.h"
#import <CoreData/CoreData.h>
#import "Items.h"

@class AddItemViewController;

@protocol AddItemViewControllerDelegate <NSObject>

- (void)addItemViewControllerDidCancel:(AddItemViewController *)controller;

- (void)addItemViewController:(AddItemViewController *)controller didFinishAddingItem:(Items *)item;

- (void)addItemViewController:(AddItemViewController *)controller didFinishEditingItem:(Items *)item;

@end
@interface AddItemViewController : UITableViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneBarButton;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (nonatomic, weak) id <AddItemViewControllerDelegate> delegate;
@property (nonatomic, strong) Items *itemToEdit;
- (IBAction)cancel;
- (IBAction)done;
@end
