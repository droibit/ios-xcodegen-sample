//
//  SampleRepositoryImplTest.swift
//  XcodeGenSampleCoreTests
//
//  Created by Shinya Kumagai on 2020/02/17.
//

import Nimble
import RxSwift
import RxBlocking
import XCTest
@testable import XcodeGenSampleCore

class SampleRepositoryImplTest: XCTestCase {
    
    private var repository: SampleRepositoryImpl!

    override func setUp() {
        super.setUp()
        repository = SampleRepositoryImpl()
    }

    override func tearDown() {
        super.tearDown()
    }

    func test_getText() {
        let text = try! repository.getText().toBlocking().first()
        expect(text) == "Hello, world!!"
    }
}
