//
//  RouterTests.swift
//  Pet-projectTests
//
//  Created by Stas B. on 04.10.2021.
//

import XCTest
import UIKit
@testable import Pet_project

class ScreenFactoryTests: XCTestCase {
    
    var router: Router!
    var cordinator: Cordinator!
    var factory: ScreenFactory!
    
    override func setUp() {
        super.setUp()
        router = MainRouter(navigationController: UINavigationController())
        cordinator = CordinatorIml.init(router: router)
        factory = ScreenFactoryIml()
    }
    
    override func tearDown() {
        router = nil
        cordinator = nil
        factory = nil
        super.tearDown()
    }

    func test_router_get_login_controller() throws {
        let vc = factory.getScreen(pageType: .loginPage, cordinator: cordinator)
        XCTAssert(vc is LoginViewController)
    }
    
    func test_router_get_post_controller() throws {
        let vc = factory.getScreen(pageType: .postPage, cordinator: cordinator)
        XCTAssert(vc is PostsViewController)
    }
    
    func test_router_get_forget_controller() throws {
        let vc = factory.getScreen(pageType: .forgetPage, cordinator: cordinator)
        XCTAssert(vc is UIViewController)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
