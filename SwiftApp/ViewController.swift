//
//  ViewController.swift
//  SwiftApp
//
//  Created by JOEYCO-0072PK on 13/12/2021.
//

import UIKit
import DropDown

class ViewController: UIViewController {

    @IBOutlet weak var tap: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

    }
    
    

}

class Core{
    static let shared = Core()
    
    func isNewUser() -> Bool
    {
        return !UserDefaults.standard.bool(forKey: "isNewUser")
    }
    
    func setIsNotNewUser()
    {
        UserDefaults.standard.set(true, forKey: "isNewUser")
    }
}

