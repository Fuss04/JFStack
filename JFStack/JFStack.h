//
//  Stack.h
//  Stack
//
//  Created by Jacob Fuss on 12/14/13.
//  Copyright (c) 2013 Jacob Fuss. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JFStack : NSObject

- (void) push:(id)item;

- (id) pop;

- (id) peek;

@end
