//
//  ViewController.swift
//  CompsingViewSwiftUI
//
//  Created by Ali on 26/12/2021.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    let InputView = UIHostingController(rootView: InputViewWithAlert())
    override func viewDidLoad() {
        super.viewDidLoad()
        addChild(InputView)
        view.addSubview(InputView.view)
        InputView.view.translatesAutoresizingMaskIntoConstraints = false
        InputView.view.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        InputView.view.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        InputView.view.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        InputView.view.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    }


}

