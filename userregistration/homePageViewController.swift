//
//  homePageViewController.swift
//  userregistration
//
//  Created by krishna on 28/06/22.
//

import UIKit

class homePageViewController: UIViewController {

    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var userHobbyLabel: UILabel!
    
    var text: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(didGetNotification(_:)), name: Notification.Name("text"), object: nil)
        
    }
   
        
    @objc func didGetNotification(_ notification: Notification) {
        let text = notification.object as! String?
        userHobbyLabel.text =  text
        fullNameLabel.text = text
    }
    
        
    @IBAction func signOutButtonTapped(_ sender: Any) {
        print("sign-out button tapped")
        let storyboard=UIStoryboard(name: "Main", bundle: nil)
        let vc=storyboard.instantiateViewController(withIdentifier: "signupViewController")
        vc.modalPresentationStyle = .overFullScreen
        present(vc,animated: false)
        
        
    }
    
    
    @IBAction func profileButtonTapped(_ sender: Any) {
        print("load member profile button tapped")
        let storyboard=UIStoryboard(name: "Main", bundle: nil)
        let vc=storyboard.instantiateViewController(withIdentifier: "homePageViewController")
        vc.modalPresentationStyle = .overFullScreen
        

        present(vc,animated: true)
    }
}
