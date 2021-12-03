//
//  AppDelegate.swift
//  ATMConsultoria
//
//  Created by BootCamp on 22/11/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let commonCoordinator = CommonCoordinator() ///instancia o coordinator principal
        commonCoordinator.start()   ///Chama o método start do Coordinator Principal
        window = UIWindow.init(frame: UIScreen.main.bounds)
        window?.rootViewController = commonCoordinator.navigationController ///atribui a viewController principal do coordinator
        window?.makeKeyAndVisible()
        
        
        return true
    }
}

