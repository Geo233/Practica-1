//
//  LoginVC.swift
//  UtilitiesApp
//
//  Created by Paul-Daniel DOBREA on 04.05.2022.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet private weak var tempView: UIView!
    @IBOutlet private weak var leadingSpace: NSLayoutConstraint!
    private var startingPoint = CGPoint.zero
    

    @IBAction func signup(_ sender: UIButton?){
        navigationController?.viewControllers = [SignupVC()]
    }

    @IBAction func panAction(_ gesture: UIPanGestureRecognizer) {
        let location = gesture.location(in: view)
        var difference: CGFloat = 0.0
        switch gesture.state {
        case .began:
            startingPoint = location
        case .ended:
            UIView.animate(withDuration: 1.0) {

                self.leadingSpace.constant = 0.0
                self.view.layoutIfNeeded()

            } completion: { done in
                //aici putem sa facem ceva cand s-a terminat animatia llll
            }

        default:
            difference = location.x - startingPoint.x
            leadingSpace.constant = leadingSpace.constant + difference
            startingPoint = location
            view.layoutIfNeeded()
        }
    }

}


 //extension 
