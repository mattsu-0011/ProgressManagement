//
//  ViewController.swift
//  ProgressManagement
//
//  Created by 松本直也 on 2020/10/12.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //TopView
        let managementListViewController = ManagementListViewController()
        let navi = UINavigationController(rootViewController: managementListViewController)
        navi.modalPresentationStyle = .fullScreen
        self.present(navi, animated: false, completion: nil)
    }


}

