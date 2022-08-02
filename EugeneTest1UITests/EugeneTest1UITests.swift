//
//  EugeneTest1UITests.swift
//  EugeneTest1UITests
//
//  Created by Burdukov Evgeniy on 8/1/22.
//

import XCTest

class EugeneTest1UITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testEugene() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        let tabBar = app.tabBars["Tab Bar"]
        XCTAssertTrue(tabBar.exists)
        
        let buttonStudy = app.buttons["Study"]
        app.tabBars["Tab Bar"].buttons["Study"].tap()
        XCTAssertTrue(buttonStudy.exists)
        
        let nextButton = app.buttons["Next "]
        nextButton.tap()
        nextButton.tap()
        nextButton.tap()
        nextButton.tap()
        
        let backButton = app.buttons["Back"]
        backButton.tap()
        backButton.tap()
        backButton.tap()
        backButton.tap()

        app.tabBars["Tab Bar"].buttons["About"].tap()
                
        
        
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
    
        func testExample1() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        

        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
}
