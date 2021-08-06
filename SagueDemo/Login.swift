//
//  Login.swift
//  SagueDemo
//
//  Created by RKU on 06/08/21.
//  Copyright © 2021 com. All rights reserved.
//

import UIKit

class Login: UIViewController {

    @IBOutlet weak var uname: UITextField!
    @IBOutlet weak var upass: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func submit(_ sender: Any) {
        jump()
    }
     func jump()
     {
        if(uname.text! == "admin" && upass.text! == "1234")
        {
            performSegue(withIdentifier: "myBridge", sender: self)
        }
        else
        {
            let alert = UIAlertController(title: "Invalid Credentials", message: "Check Username and password carefully!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
