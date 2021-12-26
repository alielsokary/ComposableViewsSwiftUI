//
//  ViewController.swift
//  CompsingViewSwiftUI
//
//  Created by Ali on 26/12/2021.
//

import UIKit
import SwiftUI
import TinyConstraints

class ViewController: UIViewController {

    let viewInputonecontainer = UIHostingController(rootView: InputView())
    let viewInputtwocontainer = UIHostingController(rootView: InputViewWithAlert())

    override func viewDidLoad() {
        super.viewDidLoad()
        placeView(viewInputonecontainer)
        placeView(viewInputtwocontainer)
        
        viewInputonecontainer.view.topToSuperview(offset: 20, usingSafeArea: true)
        viewInputtwocontainer.view.topToBottom(of: viewInputonecontainer.view, offset: 20)
    }

}

extension ViewController {
    func placeView<T>(_ containerView: UIHostingController<T>) {
        addChild(containerView)
        view.addSubview(containerView.view)
        containerView.view.leftToSuperview(offset: 8, usingSafeArea: true)
        containerView.view.rightToSuperview(offset: -8, usingSafeArea: true)
    }
}
