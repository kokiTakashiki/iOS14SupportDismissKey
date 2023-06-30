//
//  ViewController.swift
//  iOS14SupportDismissKey
//
//  Created by 武田孝騎 on 2023/06/30.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .cyan
    }

    @IBAction private func showNext(_ sender: Any) {
        let viewController = SwiftUIWrapViewController()
        present(viewController, animated: true)
    }
}

