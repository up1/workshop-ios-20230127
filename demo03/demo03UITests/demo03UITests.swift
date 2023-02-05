import XCTest

final class demo03UITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
        
        snapshot("1")
        snapshot("2")
        snapshot("3")

//
//        app.textFields["f_name"].typeText("Somkiat")
//
//        let lNameTf = app/*@START_MENU_TOKEN@*/.textFields["l_name"]/*[[".textFields[\"lastname\"]",".textFields[\"l_name\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
//        lNameTf.typeText("Pui")
//
//
//        let clickBtn = app/*@START_MENU_TOKEN@*/.buttons["click_btn"]/*[[".buttons[\"Click me \"]",".buttons[\"click_btn\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
//        clickBtn.tap()

        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

}
