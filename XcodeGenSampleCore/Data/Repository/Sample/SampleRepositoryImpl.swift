//
//  SampleRepositoryImpl.swift
//  XcodeGenSampleCore
//
//  Created by Shinya Kumagai on 2/17/20.
//

import Foundation
import RxSwift

/// FIXME:
class SampleRepositoryImpl: SampleRepository {
    
    public init() {
    }
    
    public func getText() -> Single<String> {
        return Single.just("Hello, world!!")
    }
}
