//
//  ViewController.swift
//  Login
//
//  Created by Administrator on 6/27/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var btnForgotPassword: UIButton!
    @IBOutlet weak var btnForgotUsername: UIButton!
    @IBOutlet weak var txtUsername: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    @IBAction func actionForgotUsername(_ sender: Any) {
        performSegue(withIdentifier: "Login", sender: btnForgotUsername)
    }
    
    @IBAction func actionForgotPassword(_ sender: Any) {
        performSegue(withIdentifier: "Login", sender: btnForgotPassword)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let sender = sender as? UIButton else {return}
        
        if sender == btnForgotPassword {
            segue.destination.navigationItem.title = "Forgot Password"
        }else if sender == btnForgotUsername{
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = txtUsername.text
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

