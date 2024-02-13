//
//  ColorsTableVC.swift
//  colorsApp
//
//  Created by Neel Pandya on 08/02/24.
//

import UIKit

class ColorsTableVC: UIViewController {
    var colors: [UIColor] = []
    
    enum Cells{
        static let colorCell = "ColorCell"
    }
    
    enum Segue{
        static let toDetail = "toColorsDetailVC"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        appendNewColors();
    }
    
    func appendNewColors(){
        for _ in 0..<50{
            colors.append(.random())
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorsDetailVC
        destVC.color = sender as? UIColor
    }
    
}

extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colorCell) else{
            return UITableViewCell()
        }
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: Segue.toDetail, sender: color)
    }
}
