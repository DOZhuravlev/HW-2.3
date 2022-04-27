//
//  LegendsFCViewController.swift
//  HW 2.3
//
//  Created by Zdrenko Zigich on 13.04.2022.
//

import UIKit

class KukaViewController: UIViewController {
    
    @IBOutlet weak var aboutKukaLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var user: User!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        setColor()
        imageView.image = UIImage(named: user.people.image[0])
        aboutKukaLabel.text = """
Имя игрока: \(user.people.name[0]).
Ник на поле: \(user.people.nickName[0]).
Позиция: \(user.people.position[0]).
Ведущая нога: \(user.people.workingLeg[0]).
Любимый напиток: \(user.people.favoriteDrink[0]).

Коротко о себе: \(user.people.aboutPlayer[0]).
"""
    }
}

extension KukaViewController {
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


