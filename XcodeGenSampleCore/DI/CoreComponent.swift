//
//  CoreComponent.swift
//  XcodeGenSampleCore
//
//  Created by Shinya Kumagai on 2/18/20.
//

import Foundation
import NeedleFoundation
import RxSwift

public class CoreComponent: BootstrapComponent {
}

// MARK: - Common

public extension CoreComponent {
    
    var mainScheduler: SchedulerType {
        return MainScheduler.instance
    }
}

// MARK: - Repository

public extension CoreComponent {
    
    var sampleRepository: SampleRepository {
        return shared {
            SampleRepositoryImpl()
        }
    }
}
