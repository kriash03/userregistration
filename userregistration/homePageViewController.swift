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
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func signOutButtonTapped(_ sender: Any) {
        print("sign-out button tapped")
        
    }
    
    
    @IBAction func profileButtonTapped(_ sender: Any) {
        print("load member profile button tapped")
    }
}
