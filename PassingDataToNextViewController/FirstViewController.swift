//
//  ViewController.swift
//  PassingDataToNextViewController
//
//  Created by MacStudent on 2020-03-03.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
   
    
   
    @IBOutlet weak var txtName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnNext(_ sender: Any) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = sb.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        if let name = self.txtName.text{
        secondVC.name = name
            navigationController?.pushViewController(secondVC, animated: true)
        }
    }
    
}

