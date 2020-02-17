//
//  CoreComponent+Repository.swift
//  XcodeGenSampleCore
//
//  Created by Shinya Kumagai on 2/18/20.
//

import Foundation

public extension CoreComponent {
    
    var sampleRepository: SampleRepository {
        return shared {
            SampleRepositoryImpl()
        }
    }
}
