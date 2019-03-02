//  ViewController.swift
//  ClickableUILable-UItapGesture
//  Created by Ranjeet Raushan on 28/02/2019.
//  Copyright © 2019 Vaayoo. All rights reserved.

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelClickableUsingTapGesture: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelClickableUsingTapGesture.text = "Label Clickable using Tap Gesture"
        self.view.addSubview(labelClickableUsingTapGesture)
        
        //to make UILabel clickable
        labelClickableUsingTapGesture.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer.init(target: self, action: #selector(clickLable))
        tapGesture.numberOfTapsRequired = 1
        tapGesture.numberOfTouchesRequired = 1
        labelClickableUsingTapGesture.addGestureRecognizer(tapGesture)
    }
    
    //MARK:- clickLable
    @objc func clickLable() {
        let clIckedLaBel = storyboard?.instantiateViewController(withIdentifier: "clickedlabel") as! ClickedLabel
        navigationController?.pushViewController(clIckedLaBel, animated: true)
        
    }
    
}

/*
Future Reference :
https://www.dropbox.com/s/083qkqq01f9ds2e/ClickableUILable-UItapGesture.zip?dl=0
https://www.youtube.com/watch?v=aaW5rxd5rbw  -  [ Make UIlable clickable in swift using UITapGestureRecognizer ]
*/
