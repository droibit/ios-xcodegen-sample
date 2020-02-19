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

protocol AppDependency: Dependency {
    var sampleRepository: SampleRepository { get }

    var mainScheduler: SchedulerType { get }
}

class AppComponent: Component<AppDependency> {
    var mainComponent: MainComponent {
        MainComponent(parent: self)
    }
}

extension CoreComponent {
    var appComponent: AppComponent {
        AppComponent(parent: self)
    }
}
