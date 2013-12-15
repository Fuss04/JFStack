//
//  Stack.m
//  Stack
//
//  Created by Jacob Fuss on 12/14/13.
//  Copyright (c) 2013 Jacob Fuss. All rights reserved.
//

#import "JFStack.h"

@interface JFStack()

@property (nonatomic, strong) NSMutableArray *stackArray;

@end

@implementation JFStack

- (instancetype) init {
    self = [super init];
    
    if (self) {
        self.stackArray = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (void) push:(id)object {
    if (object != nil) {
        [self.stackArray addObject:object];
    }
}

- (id) pop {
    id topOfStack = [self peek];
    
    if (topOfStack != nil) {
        [self.stackArray removeLastObject];
    }
    
    return topOfStack;
}

- (id) peek {
    id topOfStack = nil;
    
    if (![self isEmpty]) {
        topOfStack = [self.stackArray lastObject];
    }
    
    return topOfStack;
}

-(BOOL) isEmpty {
    return [self.stackArray count] == 0;
}

@end
