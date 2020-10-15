//
//  MainViewModelTest.swift
//  XcodeGenSampleTests
//
//  Created by Shinya Kumagai on 2020/10/15.
//

@testable import XcodeGenSample
import Cuckoo
import Nimble
import XCTest
import RxSwift
import RxBlocking

class MainViewModelTest: XCTestCase {
    
    private var sampleRepository: MockSampleRepository!
    
    private var viewModel: MainViewModel!

    override func setUpWithError() throws {
        sampleRepository = MockSampleRepository()
        viewModel = MainViewModel(sampleRepository: sampleRepository)
    }

    override func tearDownWithError() throws {
        viewModel = nil
    }
    
    func test_emitText() {
        stub(sampleRepository) { stub in
            when(stub.getText()).thenReturn(.just("Test"))
        }
        expect { try self.viewModel.text.toBlocking().first() } == "Test"
    }
}
