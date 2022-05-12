//
//  AppDelegate.swift
//  UtilitiesApp
//
//  Created by Paul-Daniel DOBREA on 04.05.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        let navigationController = UINavigationController(rootViewController: HomeScreen())
        window?.rootViewController = navigationController
        
        
        let value = UserDefaults.standard.bool(forKey: "salut")
        print("value is:\(value)")
        UserDefaults.standard.set(true, forKey: "salut")
        
        let username = UserDefaults.standard.value(forKey: "username") as? String
        print("username is: \(username)")
        UserDefaults.standard.set("", forKey: "username")
        
        
        let user = User()
        user.username="adimn"
        user.pass="123"
        do{
        let userData = try JSONEncoder().encode(user)
            UserDefaults.standard.set(userData, forKey: "login")
        }catch{}
        do{
            guard
            let userData = UserDefaults.standard.value(forKey: "login") as? Data
            else
            {
                return true
                
            }
            let decodedData = try JSONDecoder().decode(User.self, from: userData)
            print("Login: \(decodedData.username), \(decodedData.pass)")
           
        } catch{}
        //
        
        return true
    }


}


class User:Codable{
    var username:String = ""
    var pass:String = ""
    
    
}
