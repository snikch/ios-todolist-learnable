//
//  ToDoItem.h
//  2DO
//
//  Created by Mal Curtis on 10/07/12.
//  Copyright (c) 2012 Learnable. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDoItem : NSObject <NSCoding> {
    NSMutableArray *sampleModelArray;
}
@property (nonatomic, copy) NSString *text;
@property (nonatomic, assign) BOOL checked;
-(NSMutableArray*)toDoArray;
- (void)toggleChecked;
@end
