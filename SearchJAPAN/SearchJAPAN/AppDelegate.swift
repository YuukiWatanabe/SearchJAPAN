//
//  AppDelegate.swift
//  SearchJAPAN
//
//  Created by 渡辺　雄貴 on 2017/02/06.
//  Copyright © 2017年 渡辺　雄貴. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var navigationController: UINavigationController?
    let statusBarWidth = UIApplication.shared.statusBarFrame.width
    let statusBarHeight = UIApplication.shared.statusBarFrame.height
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let mainViewController: UIViewController = MainViewController()
        navigationController = UINavigationController(rootViewController: mainViewController)
        navigationController?.navigationBar.barTintColor = UIColor.black
        navigationController?.navigationBar.setBackgroundImage(UIImage(named: "top.jpg"), for: UIBarMetrics.default)
        navigationController?.navigationBar.tintColor = UIColor.black
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.black]
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = navigationController
        self.window?.makeKeyAndVisible()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        
    }

    func applicationWillTerminate(_ application: UIApplication) {
        
    }


}

