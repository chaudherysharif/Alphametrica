//
//  AM_SignInField.swift
//  Alphametric
//
//  Created by mohsin sharif on 2021/04/10.
//

import UIKit

class AM_SignInField: UIView, UITextFieldDelegate{

    var view: UIView!
    
    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    var placeHolderColorValue: UIColor?
    
    
    @IBInspectable var titleValue: String? {
        
        get{
            return titleLabel.text
        }
        set(fieldValue){
            titleLabel.text = fieldValue
        }
    }
    
    @IBInspectable var iconImageValue: UIImage? {
        get{
            return iconImage.image
        }
        set(fieldValue){
            iconImage.image = fieldValue
        }
    }
    
    @IBInspectable var placeHolderString: String?{
        get{
            return textField.placeholder
        }
        set(placeHolderString){
            textField.placeholder = placeHolderString
        }
    }
    
    @IBInspectable var placeHolderColor: UIColor? {
        get {
            return placeHolderColorValue
        }
        set(newValue) {
            self.placeHolderColorValue = newValue
            self.textField.attributedPlaceholder = NSAttributedString(string:self.textField.placeholder != nil ? self.textField.placeholder! : textField.placeholder!, attributes:[NSAttributedString.Key(rawValue: NSAttributedString.Key.foregroundColor.rawValue): newValue!
                ])
        }
    }
    @IBInspectable var isSecure: Bool{
        
        get{
            return textField.isSecureTextEntry
        }
        
        set(isSecure){
            if(isSecure){
                textField.isEnabled = false
                textField.isSecureTextEntry = true
                textField.isEnabled = true
            }else{
                textField.isEnabled = false
                textField.isSecureTextEntry = false
                textField.isEnabled = true
            }
        }
    }
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        xibSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        xibSetup()
    }
    
    
    func xibSetup(){
        backgroundColor = .clear
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.translatesAutoresizingMaskIntoConstraints = true
        self.textField.delegate = self
        addSubview(view)
        self.resetError()
    }
    
    
    func loadViewFromNib() -> UIView{
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: bundle)
        let nibView = nib.instantiate(withOwner: self, options: nil).first as! UIView
        return nibView
        
    }
    
    
    func resetError(){
        self.errorLabel.isHidden = true
    }
    
    func setErrorWith(message: String){
        self.errorLabel.text = message
        setFieldAsNotVerified()
    }
    
    func setFieldAsVerified(){
        resetError()
    }
    
    func setFieldAsNotVerified(){
        self.errorLabel.isHidden = false

    }
    func textFieldDidBeginEditing(_ textField: UITextField){
        self.resetError()
    }

}
