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
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func signinButtonTapped(_ sender: Any) {
        print("Sign in button tapped")
        
        
    }
    @IBAction func registerNewAccountButtonTapped(_ sender: Any) {
        print("Register account button tapped")
        let storyboard=UIStoryboard(name: "Main", bundle: nil)
        let vc=storyboard.instantiateViewController(withIdentifier: "registerViewController")
        vc.modalPresentationStyle = .overFullScreen
        present(vc,animated: true)
    }
}
