//
//  SecondViewController.swift
//  demo03
//
//  Created by Somkiat Puisungnoen on 5/2/2566 BE.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    var username: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        messageLabel.text = "Hello, " + username
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
