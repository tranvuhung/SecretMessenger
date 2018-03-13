//
//  BaseViewController.swift
//  SecretMessenger
//
//  Created by Trần Vũ Hưng on 3/13/18.
//  Copyright © 2018 Tran Vu Hung. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
  
  var shouldRefreshViews: Bool = true

    override func viewDidLoad() {
      if self.navigationController != nil {
        self.navigationController?.navigationBar.titleTextAttributes = [NSFontAttributeName: UIFont(name: "Roboto-Medium", size: 17)!]
      }
    }
}
