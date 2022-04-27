//
//  ViewController.swift
//  HW 2.3
//
//  Created by Zdrenko Zigich on 04.04.2022.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var userNameValueTF: UITextField!
    @IBOutlet weak var passwordValueTF: UITextField!
    @IBOutlet weak var startLoginImage: UIImageView!
    
    let users = User.getUsers()
    
    override func viewDidLoad() {
        startLoginImage.image = UIImage(named: users.people.image[4])
        startLoginImage.layer.cornerRadius = startLoginImage.frame.width / 2
    }
    
    @IBAction func logInPressedButton() {
        if userNameValueTF.text == "\(users.username)" && passwordValueTF.text == "\(users.password)" {
            performSegue(withIdentifier: "goToLogInViewController", sender: nil)
        } else {
            showAlert(with: "Ошибка!", and: "Неверный Логин и/или Пароль!")
        }
    }
    
    @IBAction func forgotUserNamePressedButton() {
        showAlert(with: "Забыли логин?", and: "Ваш логин - \(users.username)")
        
    }
    @IBAction func forgotPasswordPressedButton() {
        showAlert(with: "Забыли пароль?", and: "Ваш пароль - \(users.password)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameValueTF.text = ""
        passwordValueTF.text = ""
    }
    
}

extension LoginViewController {
    
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let OkAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordValueTF.text = ""
        }
        alert.addAction(OkAction)
        present(alert, animated: true)
    }
}

extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameValueTF {
            passwordValueTF.becomeFirstResponder()
        } else {
            logInPressedButton()
        }
        return true
    }
}

extension LoginViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.users = users
            } else if let navigationVC = viewController as? UINavigationController {
                guard  let aboutTeamVC = navigationVC.topViewController as? AboutTeamViewController else { return }
                aboutTeamVC.user = users
                guard let tournamentVC = navigationVC.topViewController as? TournamentViewController else { return }
                tournamentVC.user = users
                guard  let peopleTeamVC = navigationVC.topViewController as? PeopleTeamViewController else { return }
                peopleTeamVC.user = users
                guard let registarationOnTraninigVC = navigationVC.topViewController as? RegistrationOnTraningViewController else { return }
                registarationOnTraninigVC.user = users
            }
        }
    }
}



