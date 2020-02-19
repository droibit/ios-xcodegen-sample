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
