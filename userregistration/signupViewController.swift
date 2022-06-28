//
//  signupViewController.swift
//  userregistration
//
//  Created by krishna on 28/06/22.
//

import UIKit

class signupViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
  
    @IBAction func signinButtonTapped(_ sender: Any) {
        print("Sign in button tapped")
        let storyboard=UIStoryboard(name: "Main", bundle: nil)
        let vc=storyboard.instantiateViewController(withIdentifier: "homePageViewController")
        vc.modalPresentationStyle = .overFullScreen
        present(vc,animated: true)
        NotificationCenter.default.post(name: Notification.Name("text"), object: usernameTextField.text)
    
        
        let username = usernameTextField.text
        let password = passwordTextField.text
        for i in dataFile.data{
            if (i.firstName == username){
                if (i.password == password){
            //you will pass to home page
                    
                } else {
                    showPopUp(title: "Error!", message: "password incorrect")
                }
            } else {
                showPopUp(title: "Error!", message: "username incorrect")
            }
                
        }
        
    }
    @IBAction func registerNewAccountButtonTapped(_ sender: Any) {
        print("Register account button tapped")
        let storyboard=UIStoryboard(name: "Main", bundle: nil)
        let vc=storyboard.instantiateViewController(withIdentifier: "registerViewController")
        vc.modalPresentationStyle = .overFullScreen
        present(vc,animated: true)
    }
    public func showPopUp(title:String,message:String){

            let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
    //        print(message)
        }
}
