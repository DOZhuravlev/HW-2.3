//
//  AboutTeamViewController.swift
//  HW 2.3
//
//  Created by Zdrenko Zigich on 13.04.2022.
//

import UIKit

class AboutTeamViewController: UIViewController {
    var user: User!
    @IBOutlet weak var kukaButton: UIButton!
    @IBOutlet weak var danButton: UIButton!
    @IBOutlet weak var egaButton: UIButton!
    @IBOutlet weak var belyakButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setColor()
        kukaButton.layer.cornerRadius = 10
        danButton.layer.cornerRadius = 10
        egaButton.layer.cornerRadius = 10
        belyakButton.layer.cornerRadius = 10
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let danVC = segue.destination as? danViewController{
            danVC.user = user
        } else if let kukaVC = segue.destination as? kukaViewController {
            kukaVC.user = user
        } else if let egaVC = segue.destination as? egaViewController {
            egaVC.user = user
        } else if let belyakVC = segue.destination as? belyakViewController {
            belyakVC.user = user
        }
    }
}

extension AboutTeamViewController {
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
