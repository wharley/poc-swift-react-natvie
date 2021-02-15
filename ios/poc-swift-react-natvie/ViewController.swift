//
//  ViewController.swift
//  poc-swift-react-natvie
//
//  Created by Wharley Ornelas Rocha on 2/14/21.
//

import UIKit
import SwiftUI

import React

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
  }
    
  @IBAction func highScoreButtonTapped(sender : UIButton) {
      let mockData:NSDictionary = ["contacts":
          [
            ["id": 1, "name": "Wharley Ornelas", "course": "JavaScript"],
            ["id": 2, "name": "Iara Ornelas", "course": "Java"],
            ["id": 3, "name": "Maria Rita Ornelas", "course": "Swift"],
          ]
      ]

      let rootView = RCTRootView(
          bundleURL: URL(string: "http://localhost:8081/index.bundle?platform=ios")!,
          moduleName: "RNEventList",
          initialProperties: mockData as [NSObject : AnyObject],
          launchOptions: nil
      )

      let viewController = UIViewController()
      viewController.view = rootView
      self.present(viewController, animated: true, completion: nil)
  }
}
