//
//  AddItemViewController.m
//  2DO
//
//  Created by Mal Curtis on 10/07/12.
//  Copyright (c) 2012 Learnable. All rights reserved.
//

#import "AddItemViewController.h"


@interface AddItemViewController ()

@end

@implementation AddItemViewController
@synthesize doneBarButton;
@synthesize textField;
@synthesize delegate;
@synthesize itemToEdit;

- (IBAction)cancel
{
    [self.delegate addItemViewControllerDidCancel:self];
}

- (IBAction)done{
    if (self.itemToEdit == nil) {
        ToDoItem *item = [[ToDoItem alloc] init];
        item.text = self.textField.text;
        item.checked = NO;
        [self.delegate addItemViewController:self didFinishAddingItem:item];
    } else {
        self.itemToEdit.itemName = self.textField.text;
        [self.delegate addItemViewController:self didFinishEditingItem:self.itemToEdit];
    }
}

- (BOOL)textField:(UITextField *)theTextField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    NSString *newText = [theTextField.text stringByReplacingCharactersInRange:range withString:string];
    self.doneBarButton.enabled = ([newText length] > 0);
    return YES;
}
- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad{
    [super viewDidLoad];

    if (self.itemToEdit != nil) {
        self.title = @"Edit Item";
        self.textField.text = [[itemToEdit valueForKey:@"itemName"] description];
        self.doneBarButton.enabled = YES;
    }
}

- (void)viewDidUnload
{
    [self setTextField:nil];
    [self setDoneBarButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self.textField becomeFirstResponder];
}

@end
