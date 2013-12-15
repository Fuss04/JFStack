//
//  StackTests.m
//  StackTests
//
//  Created by Jacob Fuss on 12/14/13.
//  Copyright (c) 2013 Jacob Fuss. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "JFStack.h"

@interface JFStackTests : XCTestCase

@end

@implementation JFStackTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testStack
{
    JFStack *stack = [[JFStack alloc] init];
    
    XCTAssertNil([stack pop], @"You cannot pop from a nil stack");
    
    [stack push:[NSNumber numberWithInt:1]];
    
    XCTAssert([stack peek] == [NSNumber numberWithInt:1], @"Top of stack is not correct.");
    
    [stack push:[NSNumber numberWithInt:2]];
    [stack push:[NSNumber numberWithInt:3]];
    [stack push:[NSNumber numberWithInt:4]];
    
    XCTAssert([stack pop] == [NSNumber numberWithInt:4], @"The top of the stack is wrong.");
    
    [stack push:nil];
    
    XCTAssert([stack peek] == [NSNumber numberWithInt:3], @"The top of the stack is different after pushing nil. You should not be able to push nil onto the stack.");
    
}

@end
