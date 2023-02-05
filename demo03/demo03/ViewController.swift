//
//  ViewController.swift
//  demo03
//
//  Created by Somkiat Puisungnoen on 27/1/2566 BE.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstnameTF: UITextField!

    @IBOutlet weak var lastnameTF: UITextField!

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let username = firstnameTF.text ?? ""
        let destVC = segue.destination as! SecondViewController
        destVC.username = username
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onClickMe(_ sender: UIButton) {

        print("Click me !!!")
        print(firstnameTF.text!)

    }
    
    

}
