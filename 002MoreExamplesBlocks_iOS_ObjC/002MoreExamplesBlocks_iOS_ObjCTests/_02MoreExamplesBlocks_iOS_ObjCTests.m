//
//  _02MoreExamplesBlocks_iOS_ObjCTests.m
//  002MoreExamplesBlocks_iOS_ObjCTests
//
//  Created by Henry Ambicho Trujillo on 8/24/15.
//  Copyright (c) 2015 MELI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

@interface _02MoreExamplesBlocks_iOS_ObjCTests : XCTestCase

@end

@implementation _02MoreExamplesBlocks_iOS_ObjCTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
