//
//  AppDelegate.swift
//  CitySpirit
//
//  Created by Daniel Barychev on 1/20/17.
//  Copyright © 2017 Daniel Barychev. All rights reserved.
//

import UIKit
import GoogleMaps
import Firebase
import Button

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        FIRApp.configure()
        
        GMSServices.provideAPIKey("AIzaSyAdAxoXHv_PjI4r3ZFZ3ogLVOJodJJ_u14")
        
        Button.allow(toRequestLocationPermission: true)
        
        Button.shared().configure(withApplicationId: "app-0d1380410f41dedd") { (configError: Error?) -> Void in
            if let error = configError {
                print("Error: \(error.localizedDescription)")
            }
        }
        
        applyButtonAppearance()
        
        return true
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
    
    func application(_ application: UIApplication, open url: URL, sourceApplication: String?, annotation: Any) -> Bool {
        return Button.shared().handle(url);
    }
    
    
    func applyButtonAppearance() {
        let button: BTNDropinButton = BTNDropinButton.appearance()
        
        button.highlightedTextColor = UIColor.lightGray
        button.iconSize     = 20.0;
        button.borderColor  = UIColor.gray;
        button.borderWidth  = 1.0;
        button.cornerRadius = 5.0;
        button.font = UIFont.systemFont(ofSize: 14)
    }


}

