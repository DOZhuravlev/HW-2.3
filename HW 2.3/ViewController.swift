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
    
    private let login = "User"
    private let password = "Password"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let logInVC = segue.destination as? WelcomeViewController else { return }
        logInVC.userNameInLabel = userNameValueTF.text
    }
    
    @IBAction func logInPressedButton() {
        if userNameValueTF.text == "\(login)" && passwordValueTF.text == "\(password)" {
            performSegue(withIdentifier: "goToLogInViewController", sender: nil)
        } else {
            showAlert(with: "Ошибка!", and: "Неверный Логин и/или Пароль!")
        }
    }
    
    @IBAction func forgotUserNamePressedButton() {
        showAlert(with: "Забыли логин?", and: "Ваш логин - \(login)")
        
    }
    @IBAction func forgotPasswordPressedButton() {
        showAlert(with: "Забыли пароль?", and: "Ваш пароль - \(password)")
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
            performSegue(withIdentifier: "goToLogInViewController", sender: nil)
        }
        return true
    }
}

    

