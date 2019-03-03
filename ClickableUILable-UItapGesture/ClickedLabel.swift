//  ClickedLabel.swift
//  ClickableUILable-UItapGesture
//  Created by Ranjeet Raushan on 03/03/19.
//  Copyright © 2019 Vaayoo. All rights reserved.

import UIKit

class ClickedLabel: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        if (self.navigationController?.navigationBar) != nil {
            navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.blue]
        }
        navigationItem.title = "Clicked Label"
    }
}
