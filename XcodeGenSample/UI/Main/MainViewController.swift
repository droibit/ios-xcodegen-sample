//
//  MainViewController.swift
//  XcodeGenSample
//
//  Created by Shinya Kumagai on 2/16/20.
//

import UIKit
import RxCocoa
import RxSwift
import XcodeGenSampleCore

class MainViewController: UIViewController {
    
    @IBOutlet private weak var textView: UITextView!
    
    var viewModel: MainViewModel!
    
    private var disposeBag: DisposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        appComponent.mainComponent
            .inject(to: self)
        
        viewModel.text.drive(textView.rx.text)
        .disposed(by: disposeBag)
    }
}
