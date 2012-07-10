//
//  ToDoItem.m
//  2DO
//
//  Created by Mal Curtis on 10/07/12.
//  Copyright (c) 2012 Learnable. All rights reserved.
//

#import "ToDoItem.h"

@implementation ToDoItem
@synthesize text, checked;

- (id)init{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    return self;
}
- (void)toggleChecked{
    self.checked = !self.checked;
}
-(NSMutableArray*)toDoArray{
    sampleModelArray = [[NSMutableArray alloc] initWithObjects:@"Do this",@"Do that",@"Do this again",@"Get it right!",@"OMG", nil];
    return sampleModelArray;
}

- (void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:self.text forKey:@"Text"];
    [aCoder encodeBool:self.checked forKey:@"Checked"];
}
- (id)initWithCoder:(NSCoder *)aDecoder{
    if ((self = [super init])) {
        self.text = [aDecoder decodeObjectForKey:@"Text"];
        self.checked = [aDecoder decodeBoolForKey:@"Checked"];
    }
    return self;
}

@end
