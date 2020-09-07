//
//  AppDelegate.swift
//  UIKitCoreExamples
//
//  Created by Manish on 07/09/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        self.setupRootVC()

        return true
    }


}

extension AppDelegate {

    private func setupRootVC() {

        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = ViewController()
        self.window?.makeKeyAndVisible()

    }

}
