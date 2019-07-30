//
//  UITestsUITests.swift
//  UITestsUITests
//
//  Created by Jeferson Oliveira Cequeira de Jesus on 30/07/19.
//  Copyright © 2019 Jeferson Oliveira Cequeira de Jesus. All rights reserved.
//

import XCTest

class UITestsUITests: XCTestCase {

    var sut: XCUIApplication!
    
    override func setUp() {
        continueAfterFailure = false
        sut = XCUIApplication()
        sut.launch()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSwitch() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    
        // given
        let secondButton = sut.segmentedControls.buttons["Second"]
        let firstButton = sut.segmentedControls.buttons["First"]
        let firstLabel = sut.staticTexts["First"]
        let secondLabel = sut.staticTexts["Second"]
        
        // When
        // then
        if firstButton.isSelected {
            XCTAssertTrue(firstLabel.exists)
            XCTAssertFalse(secondLabel.exists)
            
            secondButton.tap()
            XCTAssertTrue(secondLabel.exists)
            XCTAssertFalse(firstLabel.exists)
        } else if secondButton.isSelected {
            XCTAssertTrue(secondLabel.exists)
            XCTAssertFalse(firstLabel.exists)
            
            firstButton.tap()
            XCTAssertTrue(firstLabel.exists)
            XCTAssertFalse(secondLabel.exists)
        }
        
    }

}
