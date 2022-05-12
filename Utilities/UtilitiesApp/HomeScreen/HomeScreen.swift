//
//  HomeScreen.swift
//  UtilitiesApp
//
//  Created by George - Dorin NEGRAU on 06.05.2022.
//

import UIKit

class HomeScreen: UIViewController {

    @IBOutlet var menuLeading: NSLayoutConstraint!
    @IBOutlet var vizualing: UIView!
    
    var isMenuOpen = true
    @IBAction func menuMethod(_ button:UIButton?){
        
        isMenuOpen.toggle()
        if(isMenuOpen)
        {
            UIView.animate(withDuration: 0.5) {
                self.menuLeading.constant = -320.0
                self.view.layoutIfNeeded()
                self.vizualing.alpha = 0.0

            } completion: { done in
                
                
            }
            
            
        }else
        {
            UIView.animate(withDuration: 0.5) {
                self.menuLeading.constant = 0.0
                self.view.layoutIfNeeded()
                self.vizualing.alpha = 0.75
            } completion: { done in
                
                
            }
        }
        
    }

   
}
