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
    var applicationDependency: ApplicationDependency!
    
    override func setUp() {
        super.setUp()
        router = MainRouter(navigationController: UINavigationController())
        applicationDependency = ApplicationDependency()
        cordinator = CordinatorIml.init(router: router, applicationDependency: applicationDependency)
        factory = ScreenFactoryIml()
    }
    
    override func tearDown() {
        router = nil
        cordinator = nil
        factory = nil
        super.tearDown()
    }

    func test_router_get_login_controller() throws {
        let vc = factory.getScreen(pageType: .loginPage, applicationDependency: applicationDependency)
        XCTAssert(vc is LoginViewController)
    }
    
    func test_router_get_post_controller() throws {
        let vc = factory.getScreen(pageType: .postPage, applicationDependency: applicationDependency)
        XCTAssert(vc is PostViewController)
    }
    
    func test_router_get_register_controller() throws {
        let vc = factory.getScreen(pageType: .registerPage, applicationDependency: applicationDependency)
        XCTAssert(vc is RegisterViewController)
    }
    
    func test_router_get_forget_controller() throws {
        let vc = factory.getScreen(pageType: .forgetPage, applicationDependency: applicationDependency)
        XCTAssert(vc is UIViewController)
    }
    
    func test_router_is_exist_login_viewModel() throws {
        let vc = factory.getScreen(pageType: .loginPage, applicationDependency: applicationDependency)
        let viewModel = (vc as! LoginViewController).viewModel
        XCTAssert(viewModel is LoginViewModel)
    }
    
    func test_router_is_exist_post_viewModel() throws {
        let vc = factory.getScreen(pageType: .postPage, applicationDependency: applicationDependency)
        let viewModel = (vc as! PostViewController).viewModel
        XCTAssert(viewModel is PostViewModel)
    }
    
    func test_router_is_exist_register_viewModel() throws {
        let vc = factory.getScreen(pageType: .registerPage, applicationDependency: applicationDependency)
        let viewModel = (vc as! RegisterViewController).viewModel
        XCTAssert(viewModel is RegisterViewModel)
    }
    
    func test_router_is_exist_forget_viewModel() throws {
//        let vc = factory.getScreen(pageType: .forgetPage, applicationDependency: applicationDependency)
//        let viewModel = (vc as! BaseViewController).viewModel
//        XCTAssert(viewModel != nil)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
