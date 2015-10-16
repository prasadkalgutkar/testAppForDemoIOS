//
//  SecondViewController.swift
//  Test Demo App IOS
//
//  Created by Prasad Kalgutkar on 10/16/15.
//  Copyright (c) 2015 Prasad Kalgutkar. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var firstname: UILabel!
    @IBOutlet weak var lastname: UILabel!
    @IBOutlet weak var gender: UILabel!
    @IBOutlet weak var emailId: UILabel!
    
    var username:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
            if username == "Nikhil"
            {
                firstname.text = "Nikhil"
                lastname.text = "Jain"
                gender.text = "Male"
                emailId.text = "nikhilj@thoughtworks.com"
                emailId.sizeToFit()
            }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
