//
//  MainComponent.swift
//  XcodeGenSample
//
//  Created by Shinya Kumagai on 2/18/20.
//

import Foundation
import NeedleFoundation
import XcodeGenSampleCore

protocol MainDependency: Dependency {
    var sampleRepository: SampleRepository { get }
}

class MainComponent: Component<MainDependency> {
    private var viewModel: MainViewModel {
        MainViewModel(sampleRepository: dependency.sampleRepository)
    }

    func inject(to viewController: MainViewController) {
        viewController.viewModel = viewModel
    }
}
