//
//  SignupVC.swift
//  UtilitiesApp
//
//  Created by Antonio - Raul RICHARD on 04.05.2022.
//

import UIKit

class SignupVC: UIViewController {

    @IBOutlet private weak var email:UI
    
    
    @IBAction func login(_ sender: UIButton?){
        navigationController?.viewControllers = [LoginVC()]
    }

}
