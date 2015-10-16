//
//  ViewController.swift
//  Test Demo App IOS
//
//  Created by Prasad Kalgutkar on 10/15/15.
//  Copyright (c) 2015 Prasad Kalgutkar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernam: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var errorMsg: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clearText(sender: AnyObject) {
        usernam.text = ""
        password.text = ""
        errorMsg.hidden = true
    }
    
    @IBAction func LoginMethod(sender: AnyObject) {
        
        if usernam.text == "Nikhil"
        {
            performSegueWithIdentifier("pushDetailSegue", sender: usernam.text)
        }else
        {
            errorMsg.hidden = false
            errorMsg.text = "Please enter valid credentials"
        }
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "pushDetailSegue")
        {
            let vc = segue.destinationViewController as! SecondViewController
            vc.username = sender as? String
        }
    }

}

