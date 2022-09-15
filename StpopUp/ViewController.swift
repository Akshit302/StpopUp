//
//  ViewController.swift
//  StpopUp
//
//  Created by Akshit on 05/09/22.
//

import UIKit

class ViewController: UIViewController {
   // var xib = popUpView()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func btnClicked(_ sender: Any) {
        ZpopUpView()
    }
    func ZpopUpView() {
        let myView = Bundle.main.loadNibNamed("popUpView", owner: self, options: nil)![0] as? popUpView
        let popUp = STZPopupViewConfig()
        popUp.dismissTouchBackground = false
        presentPopupView(myView!)
    }
    @objc func touchDisplay() {
        dismissPopupView()
    }
    
}

