//
//  Seety.swift
//  DemoAppUITests
//
//  Created by Suparna Khamaru on 08/06/23.
//

import XCTest

final class Seety: XCTestCase {
    let app = XCUIApplication(bundleIdentifier: "com.sparks")

    override func setUpWithError() throws {
        continueAfterFailure = false
    }
  

    func testSearchLocation() throws {
      launchApp()
      searchLocationInHome()
      
    }
  
  func launchApp() {
    app.launch()
  }
  
  func searchLocationInHome() {
    let searchAnAddressTextField = app.textFields["Search an address"]
  
    searchAnAddressTextField.tap()
    searchAnAddressTextField.typeText("Boudewijnsstraat, Antwerpen, Belgium")
    app.keyboards.buttons["Search"].tap()
  }
}
