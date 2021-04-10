//
//  AM_Button_Ext.swift
//  Alphametric
//
//  Created by mohsin sharif on 2021/04/10.
//
import UIKit
import Foundation
import Combine

extension UIButton{
    @IBInspectable var btnCornerRadius: CGFloat {
        get {
            return self.layer.cornerRadius
        }
        set(btnCornerRadius){
            if btnCornerRadius > 0 {
                self.layer.cornerRadius = btnCornerRadius
            }
        }
    }

}

