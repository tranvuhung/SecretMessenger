//
//  MainTableViewController.swift
//  SecretMessenger
//
//  Created by Trần Vũ Hưng on 3/13/18.
//  Copyright © 2018 Tran Vu Hung. All rights reserved.
//

import UIKit

class MainTabBarViewController: UITabBarController, UITabBarControllerDelegate {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.delegate = self
  }
  
  func requireAllTabsReloading(){
    self.selectedIndex = 0
    for subView in self.viewControllers! {
      let navigation = subView as! UINavigationController
      let viewController = navigation.viewControllers.first as! BaseViewController
      viewController.shouldRefreshViews = true
    }
  }
  
  func requireAllTabsPopingToRootVC() {
    for subVC in self.viewControllers! {
      let navigation = subVC as! UINavigationController
      navigation.popToRootViewController(animated: true)
    }
  }
  
}
