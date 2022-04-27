//
//  belyakViewController.swift
//  HW 2.3
//
//  Created by Zdrenko Zigich on 13.04.2022.
//


import UIKit

class BelyakViewController: UIViewController {
    @IBOutlet weak var belyakImageView: UIImageView!
    @IBOutlet weak var aboutBelyakLabel: UILabel!
    
    var user: User!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        setColor()
        belyakImageView.image = UIImage(named: user.people.image[3])
        aboutBelyakLabel.text = """
Имя игрока: \(user.people.name[3]).
Ник на поле: \(user.people.nickName[3]).
Позиция: \(user.people.position[2]).
Ведущая нога: \(user.people.workingLeg[1]).
Любимый напиток: \(user.people.favoriteDrink[3]).

Коротко о себе: \(user.people.aboutPlayer[3]).
"""
    }
}

extension BelyakViewController {
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
