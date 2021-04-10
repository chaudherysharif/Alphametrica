//
//  SignInController.swift
//  Alphametric
//
//  Created by mohsin sharif on 2021/04/10.
//

import UIKit

class SignInController: UIViewController {

    
    @IBOutlet weak var userName: AM_SignInField!
    @IBOutlet weak var passWord: AM_SignInField!

    public var amDefaultController : ViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func openSignUpController(_ sender: UIButton) {
        dismiss(animated: true) {
            self.amDefaultController.openSignUpController()
        }
    }
    
    @IBAction func dissmissController(_ sender: UIButton) {
        dismiss(animated: true)
    }
    @IBAction func loginAction(_ sender: UIButton) {
        if userName.textField.text == "test@luxpmsoft.com" && passWord.textField.text == "test1234!" {
            let appDel = UIApplication.shared.delegate as! AppDelegate
            appDel.changeRootViewController(isLoggedIn: true)
        }else{
            passWord.setErrorWith(message: "email or password is wrong")
        }
        
        
    }
}
