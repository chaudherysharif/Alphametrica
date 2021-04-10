//
//  AM_GradientView.swift
//  Alphametric
//
//  Created by mohsin sharif on 2021/04/10.
//


import Foundation
import UIKit

@IBDesignable class AM_GradientView: UIView {

    var view: UIView!
    
    
    @IBOutlet weak var appNameLabel: UILabel!
   
    @IBInspectable var titleValue: String? {
        
        get{
            return appNameLabel.text
        }
        set(fieldValue){
            appNameLabel.text = fieldValue
        }
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        xibSetup()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        xibSetup()
        addGradient() 
    }
    
    func addGradient()  {
        //Gradient
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor(named: "Color")!.cgColor,UIColor(named: "Color-1")!.cgColor,UIColor(named: "Color-2")!.cgColor,UIColor(named: "Color-3")!.cgColor];
        gradient.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradient.endPoint = CGPoint(x: 1.0, y: 0.5)
        gradient.frame = bounds;
        view.layer.addSublayer(gradient)
        view.mask = appNameLabel
    }
    func xibSetup(){
        backgroundColor = .clear
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.translatesAutoresizingMaskIntoConstraints = true
        
        
        addSubview(view)
        
        
    }
    
    func loadViewFromNib() -> UIView{
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: bundle)
        let nibView = nib.instantiate(withOwner: self, options: nil).first as! UIView
        return nibView
        
    }
}



