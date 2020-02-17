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

public extension CoreComponent {
    
    var mainScheduler: SchedulerType {
        return MainScheduler.instance
    }
}
