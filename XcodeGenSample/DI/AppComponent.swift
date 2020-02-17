//
//  AppComponent.swift
//  XcodeGenSample
//
//  Created by Shinya Kumagai on 2/17/20.
//

import Foundation
import NeedleFoundation
import RxSwift
import XcodeGenSampleCore

class AppComponent: BootstrapComponent {
    
    private let core: CoreComponent = CoreComponent()
    
    var mainComponent: MainComponent {
        return MainComponent(parent: self)
    }
}

extension AppComponent: CoreComponentProvider {
    
    var sampleRepository: SampleRepository {
        return core.sampleRepository
    }
    
    var mainScheduler: SchedulerType {
        return core.mainScheduler
    }
}
