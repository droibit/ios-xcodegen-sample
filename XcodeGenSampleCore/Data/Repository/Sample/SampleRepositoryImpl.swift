//
//  SampleRepositoryImpl.swift
//  XcodeGenSampleCore
//
//  Created by Shinya Kumagai on 2/17/20.
//

import Foundation
import RxSwift

// FIXME:
class SampleRepositoryImpl: SampleRepository {
    init() {
        #if DEBUG
            print("DEBUG: Make \(type(of: self)).")
        #endif
    }

    func getText() -> Single<String> {
        Single.just("Hello, world!!")
    }
}
