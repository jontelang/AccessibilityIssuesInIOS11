//
//  AccessibilityIssuesInIOS11UITests.m
//  AccessibilityIssuesInIOS11UITests
//
//  Created by Jonathan Winger Lang on 12/4/17.
//  Copyright © 2017 Jonathan Winger Lang. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface AccessibilityIssuesInIOS11UITests : XCTestCase {
    XCUIApplication *app;
}

@end

@implementation AccessibilityIssuesInIOS11UITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    app = [[XCUIApplication alloc] init];
    [app launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    [app.buttons[@"buttonOpenSubview"].firstMatch tap];
    
    // Breakpoint here and write in console "po app"
}

@end
