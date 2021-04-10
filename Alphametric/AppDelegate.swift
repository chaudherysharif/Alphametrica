//
//  AppDelegate.swift
//  Alphametric
//
//  Created by mohsin sharif on 2021/04/09.
//

import UIKit
@main

class AppDelegate: UIResponder, UIApplicationDelegate {


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    func changeRootViewController(isLoggedIn : Bool){
        var  window = UIApplication.shared.keyWindow

        let transition = CATransition()
        transition.duration = 0.5
        transition.type = CATransitionType(rawValue: "flip")
        transition.subtype = CATransitionSubtype.fromLeft
        if isLoggedIn {
            let homeController = AppStoryboard.Welcome.instance.instantiateViewController(withIdentifier: "WelcomeController")
            window?.rootViewController = homeController

        }else {
            let loginController = AppStoryboard.Main.instance.instantiateViewController(withIdentifier: "ViewController")
            let navigationcontroller = UINavigationController(rootViewController: loginController)
            navigationcontroller.navigationBar.isHidden = true
            window?.rootViewController = nil;
            window?.rootViewController = loginController
        }
        
    }

}

