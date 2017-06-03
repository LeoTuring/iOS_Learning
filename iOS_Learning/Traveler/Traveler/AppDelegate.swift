//
//  AppDelegate.swift
//  Traveler
//
//  Created by 李冬阳 on 2017/6/3.
//  Copyright © 2017年 lidongyang. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?


  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    // Override point for customization after application launch.
    // 国际化配置
    LocalizedRemoteConfig.shareInstance.setUp()
    self.window = UIWindow.init(frame: UIScreen.main.bounds)
    self.window?.backgroundColor = UIColor.white
    self.window?.rootViewController = self.setUp()
    self.window?.makeKeyAndVisible()
    return true
  }
  
  func setUp() -> UITabBarController {
    /** 设置字体颜色*/
    var textAttributes: [String : Any] = [:]
    textAttributes[NSForegroundColorAttributeName] = UIColor.gray
    var selectedAttributes: [String : Any] = [:]
    selectedAttributes[NSForegroundColorAttributeName] = UIColor.init(colorLiteralRed: 0.29, green: 0.74, blue: 0.79, alpha: 1)
    /** 推荐*/
    let recommend = RecommendViewController()
    let recommendNav = UINavigationController.init(rootViewController: recommend)
    recommendNav.tabBarItem = UITabBarItem.init(title: LocalizedRemoteConfig.localize(forkey: "Lable_recommend"), image: UIImage.init(named: "icon1")?.withRenderingMode(.alwaysOriginal), selectedImage: UIImage.init(named: "icon11")?.withRenderingMode(.alwaysOriginal))
    recommendNav.tabBarItem.setTitleTextAttributes(textAttributes, for: .normal)
    recommendNav.tabBarItem.setTitleTextAttributes(selectedAttributes, for: .selected)

    /** 目的地*/
    let destination = DestinationViewController()
    let destinationNav = UINavigationController.init(rootViewController: destination)
    destinationNav.tabBarItem = UITabBarItem.init(title: LocalizedRemoteConfig.localize(forkey: "Lable_destination"), image: UIImage.init(named: "icon2")?.withRenderingMode(.alwaysOriginal), selectedImage: UIImage.init(named: "icon22")?.withRenderingMode(.alwaysOriginal))
    destinationNav.tabBarItem.setTitleTextAttributes(textAttributes, for: .normal)
    destinationNav.tabBarItem.setTitleTextAttributes(selectedAttributes, for: .selected)
    
    /** 个人信息*/
    let userInfo = UserInfoViewController()
    let userInfoNav = UINavigationController.init(rootViewController: userInfo)
    userInfoNav.tabBarItem = UITabBarItem.init(title: LocalizedRemoteConfig.localize(forkey: "Lable_userInfo"), image: UIImage.init(named: "icon4")?.withRenderingMode(.alwaysOriginal), selectedImage: UIImage.init(named: "icon44")?.withRenderingMode(.alwaysOriginal))
    userInfoNav.tabBarItem.setTitleTextAttributes(textAttributes, for: .normal)
    userInfoNav.tabBarItem.setTitleTextAttributes(selectedAttributes, for: .selected)
    
    /** TabBarController */
    let tabBarController = UITabBarController()
    tabBarController.viewControllers = [recommendNav, destinationNav, userInfoNav]
    tabBarController.tabBar.barTintColor = UIColor.init(colorLiteralRed: 0.85, green: 0.84, blue: 0.76, alpha: 1)
    tabBarController.tabBar.tintColor = UIColor.white
    
    return tabBarController
  }

  func applicationWillResignActive(_ application: UIApplication) {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
  }

  func applicationDidEnterBackground(_ application: UIApplication) {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
  }

  func applicationWillEnterForeground(_ application: UIApplication) {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
  }

  func applicationDidBecomeActive(_ application: UIApplication) {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
  }

  func applicationWillTerminate(_ application: UIApplication) {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
  }


}

