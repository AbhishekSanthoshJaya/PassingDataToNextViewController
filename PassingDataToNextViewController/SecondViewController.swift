//
//  SecondViewController.swift
//  PassingDataToNextViewController
//
//  Created by MacStudent on 2020-03-03.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lblWelcome: UILabel!
    
    var name:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.hidesBarsOnTap = true
        
        self.addCloseButton()
        self.navigationItem.hidesBackButton = true
        
        let bvc = self.navigationController?.viewControllers[0]
        
        self.navigationController?.popToViewController(bvc!, animated: true)
        
        if let nm = name{
            self.lblWelcome.text = "Welcome, \(nm)"
        }
        else {
            self.lblWelcome.text = "No name"
        }
        
        // Do any additional setup after loading the view.
    }
    
    private func addCloseButton()
    {
        let btnClose = UIBarButtonItem(title: "close", style: .plain, target: self, action: #selector(self.goBack))
        
        self.navigationItem.rightBarButtonItem = btnClose
    }
    
    @objc func goBack()
    {
        self.navigationController?.popViewController(animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
