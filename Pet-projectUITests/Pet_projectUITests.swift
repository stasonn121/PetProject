//
//  Pet_projectUITests.swift
//  Pet-projectUITests
//
//  Created by Stas B. on 18.10.2021.
//

import XCTest

class Pet_projectUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testValidSuccess() throws {
        let app = XCUIApplication()
        app.launch()
        
        let yourEmailTextField = app.textFields["Your email"]
        let yourPasswordSecureTextField = app.secureTextFields["Your password"]
        yourEmailTextField.tap()
        yourEmailTextField.typeText("stasonn11@gmail.com")
        yourPasswordSecureTextField.tap()
        yourPasswordSecureTextField.typeText("11111111")
        app.buttons["LOGIN"].tap()
        
        XCTAssertTrue(app.tables["TABLE"].waitForExistence(timeout: 5))
    }
    
    func testValidErrorAlert() throws {
        let app = XCUIApplication()
        app.launch()
        
        let yourEmailTextField = app.textFields["Your email"]
        let yourPasswordSecureTextField = app.secureTextFields["Your password"]
        yourEmailTextField.tap()
        yourEmailTextField.typeText("stasonn11@gmail.com")
        yourPasswordSecureTextField.tap()
        yourPasswordSecureTextField.typeText("111111")
        app.buttons["LOGIN"].tap()
        
        XCTAssertTrue(app.alerts["Error"].waitForExistence(timeout: 5))
    }
}
