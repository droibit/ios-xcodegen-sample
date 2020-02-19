//
//  SampleRepositoryImplTest.swift
//  XcodeGenSampleCoreTests
//
//  Created by Shinya Kumagai on 2020/02/17.
//

import Nimble
import RxBlocking
import RxSwift
@testable import XcodeGenSampleCore
import XCTest

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
