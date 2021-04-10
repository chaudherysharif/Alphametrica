//
//  WelcomeController.swift
//  Alphametric
//
//  Created by mohsin sharif on 2021/04/10.
//


import UIKit

class WelcomeController: UIViewController {
    @IBAction func logOutAction(_ sender: UIButton) {
        let appDel = UIApplication.shared.delegate as! AppDelegate
        appDel.changeRootViewController(isLoggedIn: false)
    }
}


