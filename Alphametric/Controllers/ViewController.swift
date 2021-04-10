//
//  ViewController.swift
//  Alphametric
//
//  Created by mohsin sharif on 2021/04/09.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var appNameLabel: UILabel!
    @IBOutlet weak var maskView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func openSignInVC(sender : UIButton){
        openSignInController()
        
    }
    @IBAction func openSignUpVC(sender : UIButton){
        openSignUpController()
    }
    func openSignUpController() {
        let signUpController  = AppStoryboard.Main.instance.instantiateViewController(withIdentifier: "SignUpcontroller") as! SignUpcontroller
        signUpController.amDefaultController = self
        signUpController.modalPresentationStyle = .overCurrentContext
        signUpController.modalTransitionStyle = .flipHorizontal
        present(signUpController, animated: true, completion: nil)
    }
    func openSignInController() {
        let signInController  = AppStoryboard.Main.instance.instantiateViewController(withIdentifier: "SignInController") as! SignInController
        signInController.amDefaultController = self
        signInController.modalPresentationStyle = .overCurrentContext
        signInController.modalTransitionStyle = .coverVertical
        present(signInController, animated: true, completion: nil)
        
    }
}

