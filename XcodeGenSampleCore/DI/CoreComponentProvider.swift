//
//  CoreComponentProvider.swift
//  XcodeGenSampleCore
//
//  Created by Shinya Kumagai on 2/18/20.
//

import Foundation
import RxSwift

public protocol CoreComponentProvider {
    
    var sampleRepository: SampleRepository { get }
    
    var mainScheduler: SchedulerType { get }
}
