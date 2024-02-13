//
//  UIColor+Ext.swift
//  colorsApp
//
//  Created by Neel Pandya on 08/02/24.
//

import UIKit

extension UIColor{
    static func random()-> UIColor{
            return UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
    }
}
