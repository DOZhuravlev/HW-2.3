//
//  peopleTeamViewController.swift
//  HW 2.3
//
//  Created by Zdrenko Zigich on 22.04.2022.
//

import UIKit
class PeopleTeamViewController: UIViewController {
    var user: User!
   
    override func viewDidLoad() {
        super.viewDidLoad()
       setColor()
    }
}

extension PeopleTeamViewController {
    private func setColor(){
        let colorOne = UIColor(red: 9 / 255, green: 40 / 255, blue: 121 / 255, alpha: 0.6).cgColor
        let colorTwo = UIColor(red: 100 / 255, green: 50 / 255, blue: 50 / 255, alpha: 0.6).cgColor
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [colorOne, colorTwo]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0, y: 1)
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
