//
//  registerViewController.swift
//  userregistration
//
//  Created by krishna on 28/06/22.
//

import UIKit

class registerViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var hobbyTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func cancelButtonTapped(_ sender: Any) {
        print("cancel button tapped")
        dismiss(animated: true)
    }
    
    @IBAction func signupButtonTapped(_ sender: Any) {
        print("signup button tapped")
        let storyboard=UIStoryboard(name: "Main", bundle: nil)
        let vc=storyboard.instantiateViewController(withIdentifier: "signupViewController")
        vc.modalPresentationStyle = .overFullScreen
        present(vc,animated: false)
        
       
        }
    
}

