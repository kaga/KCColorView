//
//  colorViewTests.m
//  colorViewTests
//
//  Created by kaga chan on 22/8/14.
//  Copyright (c) 2014 ada. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "KCColorView.h"

@interface colorViewTests : XCTestCase

@end

@implementation colorViewTests

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

- (void)testTagViewGridSimple
{
    CGSize size = [KCColorView getGridSize:1];
    XCTAssertEqual((int)size.width, 1, @"1 x 1 grid");
    XCTAssertEqual((int)size.height, 1, @"1 x 1 grid");
    
    size = [KCColorView getGridSize:2];
    XCTAssertEqual((int)size.width, 2, @"1 x 2 grid");
    XCTAssertEqual((int)size.height, 1, @"1 x 2 grid");
    
    size = [KCColorView getGridSize:3];
    XCTAssertEqual((int)size.width, 2, @"2 x 2 grid");
    XCTAssertEqual((int)size.height, 2, @"2 x 2 grid");
    
    size = [KCColorView getGridSize:3];
    XCTAssertEqual((int)size.width, 2, @"2 x 2 grid");
    XCTAssertEqual((int)size.height, 2, @"2 x 2 grid");
}

- (void)testTagViewGridComplex
{
    CGSize size = [KCColorView getGridSize:7];
    XCTAssertEqual((int)size.width, 3, @"3 x 3 grid");
    XCTAssertEqual((int)size.height, 3, @"3 x 3 grid");
}

@end
