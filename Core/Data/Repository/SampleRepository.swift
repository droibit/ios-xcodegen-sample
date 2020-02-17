//
//  SampleRepository.swift
//  XcodeGenSample
//
//  Created by Shinya Kumagai on 2020/02/17.
//

import Foundation
import RxSwift

public protocol SampleRepository {
    
    func getText() -> Single<String>
}

/// FIXME:
public class SampleRepositoryImpl: SampleRepository {
    
    public init() {
    }
    
    public func getText() -> Single<String> {
        return Single.just("Hello, world!!")
    }
}
