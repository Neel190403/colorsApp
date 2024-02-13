//
//  ColorsDetailVC.swift
//  colorsApp
//
//  Created by Neel Pandya on 08/02/24.
//

import UIKit

class ColorsDetailVC: UIViewController {
    
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color ?? .blue
    }
}
