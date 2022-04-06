//
//  LogInViewController.swift
//  HW 2.3
//
//  Created by Zdrenko Zigich on 05.04.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet weak var userNameLabel: UILabel!
    
    var userNameInLabel: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let colorOne = UIColor(red: 9 / 255, green: 115 / 255, blue: 121 / 255, alpha: 1.0).cgColor
        let colorTwo = UIColor(red: 150 / 255, green: 200 / 255, blue: 50 / 255, alpha: 1.0).cgColor
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [colorOne, colorTwo]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0, y: 1)
        self.view.layer.insertSublayer(gradientLayer, at: 0)
        
        guard let userNameInLabel = self.userNameInLabel else { return }
        userNameLabel.text = "Hello, \(userNameInLabel)!"
    }
}
