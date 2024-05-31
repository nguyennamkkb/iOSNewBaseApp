//
//  UIviewExtension.swift
//  BaseApp
//
//  Created by Mac mini on 31/05/2024.
//

import Foundation
import UIKit


extension UIView {
    func addCornerRadius() { //tạo border cho view 10
        layer.cornerRadius = 10.0
    }

    func addNDropShadow(){
        self.layer.shadowColor = UIColor(hex: "#00000020")?.cgColor
        self.layer.shadowOpacity = 0.2
        self.layer.shadowOffset = .zero
        self.layer.shadowRadius = 20
        self.layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
    }
    func addBorderColo(color: UIColor, width: CGFloat) {
            layer.borderWidth = width
            layer.borderColor = color.cgColor
        }
    
    func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        //vd: view.roundCorners(corners: [.topLeft, .bottomLeft], radius: CGFloat(Common.RADIUS))
        
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}
