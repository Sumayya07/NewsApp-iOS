//
//  WelcomeViewController.swift
//  SenpiperAssignment
//
//  Created by Sumayya Siddiqui on 14/06/23.
//

import UIKit

class WelcomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.backButtonTitle = ""
    }
    
    
    @IBAction func btnClickTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "NewsViewController") as! NewsViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
