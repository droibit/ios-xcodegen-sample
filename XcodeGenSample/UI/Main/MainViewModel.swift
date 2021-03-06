//
//  MainViewModel.swift
//  XcodeGenSample
//
//  Created by Shinya Kumagai on 2020/02/18.
//

import Foundation
import RxCocoa
import RxSwift
import XcodeGenSampleCore

class MainViewModel {
    private let sampleRepository: SampleRepository

    private(set) lazy var text: Driver<String> = {
        self.sampleRepository.getText()
            .asDriver(onErrorDriveWith: Driver.empty())
    }()

    init(sampleRepository: SampleRepository) {
        self.sampleRepository = sampleRepository
    }

    deinit {
        print("deinit: \(type(of: self))")
    }
}
