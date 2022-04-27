//
//  LogInViewController.swift
//  HW 2.3
//
//  Created by Zdrenko Zigich on 05.04.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var aboutTeamLabel: UILabel!
    @IBOutlet weak var logOutButtonLabel: UIButton!
    
    var users: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setColor()
        setLabel()
    }
}

extension WelcomeViewController {
    
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
    
    private func setLabel() {
        userNameLabel.text = "Добро пожаловать в ФС Система, \(users.username)!"
        aboutTeamLabel.text = "Команда была образована в декабре 2016 года и объединяет людей любящих футбол, также воспитывает молодых футболистов, имеет призовые места на турнирах и 1 место в чемпионате города 2021 году!"
        aboutTeamLabel.layer.cornerRadius = aboutTeamLabel.frame.height / 2
        userNameLabel.layer.cornerRadius = userNameLabel.frame.height / 2
        userNameLabel.backgroundColor = UIColor(white: 0.5, alpha: 0.7)
        logOutButtonLabel.layer.cornerRadius = 15
        logOutButtonLabel.backgroundColor = UIColor(white: 0.3, alpha: 0.7)
    }
}
