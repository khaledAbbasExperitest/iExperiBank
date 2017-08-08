//
//  ExperiBankUITests2.m
//  ExperiBankUITests2
//
//  Created by khaled abbas on 26/07/2017.
//  Copyright © 2017 Experitest. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface ExperiBankUITests2 : XCTestCase

@end

@implementation ExperiBankUITests2

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExampleLongRun {
    // Use recording to get started writing UI tests.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    XCUIApplication *app = [[XCUIApplication alloc] init];
    
    for (int i = 0; i <= 30; i++) {
        [app launch];
        XCUIElement *usernametextfieldTextField = app.textFields[@"usernameTextField"];
        [usernametextfieldTextField tap];
        [usernametextfieldTextField typeText:@"company"];
        
        XCUIElement *passwordtextfieldSecureTextField = app.secureTextFields[@"passwordTextField"];
        [passwordtextfieldSecureTextField tap];
        [passwordtextfieldSecureTextField typeText:@"company"];
        [app.buttons[@"loginButton"] tap];
        [app.buttons[@"makePaymentButton"] tap];
        [app.buttons[@"sendPaymentButton"] tap];
        [app.buttons[@"countryButton"] tap];
        [app.tables[@"conutryView"].staticTexts[@"New Zealand"] tap];
        
        XCUIElement *sendpaymentbuttonButton = app.buttons[@"sendPaymentButton"];
        [sendpaymentbuttonButton tap];
        
        XCUIElement *phoneTextField = app.textFields[@"Phone"];
        [phoneTextField tap];
        [phoneTextField typeText:@"2"];
        
        XCUIElement *nameTextField = app.textFields[@"Name"];
        [nameTextField tap];
        [nameTextField typeText:@"y"];
        
        XCUIElement *amountTextField = app.textFields[@"Amount"];
        [amountTextField tap];
        [amountTextField typeText:@"5"];
        sleep(2);
        [sendpaymentbuttonButton tap];
        sleep(2);
        [app.alerts[@"ExperiBank"].buttons[@"Yes"] tap];
        sleep(2);
        [app.buttons[@"logoutButton"] tap];
        [XCUIDevice sharedDevice].orientation = UIDeviceOrientationFaceUp;
        [app terminate];

    }
}
- (void)testExampleNotSoLongRun {
    // Use recording to get started writing UI tests.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    XCUIApplication *app = [[XCUIApplication alloc] init];
    
    for (int i = 0; i <= 5; i++) {
        [app launch];
        XCUIElement *usernametextfieldTextField = app.textFields[@"usernameTextField"];
        [usernametextfieldTextField tap];
        [usernametextfieldTextField typeText:@"company"];
        
        XCUIElement *passwordtextfieldSecureTextField = app.secureTextFields[@"passwordTextField"];
        [passwordtextfieldSecureTextField tap];
        [passwordtextfieldSecureTextField typeText:@"company"];
        [app.buttons[@"loginButton"] tap];
        [app.buttons[@"makePaymentButton"] tap];
        [app.buttons[@"sendPaymentButton"] tap];
        [app.buttons[@"countryButton"] tap];
        [app.tables[@"conutryView"].staticTexts[@"New Zealand"] tap];
        
        XCUIElement *sendpaymentbuttonButton = app.buttons[@"sendPaymentButton"];
        [sendpaymentbuttonButton tap];
        
        XCUIElement *phoneTextField = app.textFields[@"Phone"];
        [phoneTextField tap];
        [phoneTextField typeText:@"2"];
        
        XCUIElement *nameTextField = app.textFields[@"Name"];
        [nameTextField tap];
        [nameTextField typeText:@"y"];
        
        XCUIElement *amountTextField = app.textFields[@"Amount"];
        [amountTextField tap];
        [amountTextField typeText:@"5"];
        sleep(2);
        [sendpaymentbuttonButton tap];
        sleep(2);
        [app.alerts[@"ExperiBank"].buttons[@"Yes"] tap];
        sleep(2);
        [app.buttons[@"logoutButton"] tap];
        [XCUIDevice sharedDevice].orientation = UIDeviceOrientationFaceUp;
        [app terminate];
    }
}
@end
