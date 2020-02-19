//
//  UIViewController+DI.swift
//  XcodeGenSample
//
//  Created by Shinya Kumagai on 2020/02/18.
//

import UIKit

extension UIViewController {
    var appComponent: AppComponent {
        (UIApplication.shared.delegate as! AppDelegate).component
    }
}
