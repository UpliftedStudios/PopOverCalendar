//
//  ViewController.swift
//  PopOverCalendar
//
//  Created by Marcus Hidalgo on 7/11/18.
//  Copyright © 2018 Marcus Hidalgo. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UIPopoverPresentationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func barBtnTapped(_ sender: Any) {
        
        let VC = storyboard?.instantiateViewController(withIdentifier: "popOverVC") as! PopOverVC
        let navController = UINavigationController(rootViewController: VC)
        VC.preferredContentSize = CGSize(width: 400, height: 400)
        navController.modalPresentationStyle = UIModalPresentationStyle.popover
        
        let popOver = navController.popoverPresentationController
        
        popOver?.delegate = self
        popOver?.barButtonItem = sender as? UIBarButtonItem
        self.present(navController, animated: true, completion: nil)
        
    }
    
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }
    
}

