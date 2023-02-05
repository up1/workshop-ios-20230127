//
//  ViewController.swift
//  demo03
//
//  Created by Somkiat Puisungnoen on 27/1/2566 BE.
//

import UIKit

class ViewController: UIViewController, ChooseDelegate {

    @IBOutlet weak var firstnameTF: UITextField!

    @IBOutlet weak var lastnameTF: UITextField!
    
    @IBAction func onPressDelete(_ sender: Any) {
        print("onPressDelete 1")
        if let vc = storyboard?.instantiateViewController(withIdentifier: "choose_gender") as? ChooseViewController {
                    print("onPressDelete 2")
                    vc.delegate = self
                    self.navigationController?.pushViewController(vc, animated: true)
                }
    }
    
    func genderChoosen(gender: String) {
        print("Choosen gender = " + gender)
    }
    
    
    
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
