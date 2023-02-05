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
    
    
    @IBAction func onPressNotification(_ sender: Any) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "choose_gender") as? ChooseViewController {
            self.navigationController?.pushViewController(vc, animated: true)
                }
    }
    
    
    @IBAction func onPressDelete(_ sender: Any) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "choose_gender") as? ChooseViewController {
            //vc.change = setGender
            self.navigationController?.pushViewController(vc, animated: true)
                }
    }
    
    func setGender(gender: String) {
        print("Set gender = " + gender)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let username = firstnameTF.text ?? ""
        let destVC = segue.destination as! SecondViewController
        destVC.username = username
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        NotificationCenter.default.addObserver(self, selector: #selector(didReceiveData(_:)), name: Notification.Name("DataNotification"), object: nil)
    }

    @objc func didReceiveData(_ notification: Notification) {
        if let data = notification.userInfo?["data"] as? String {
            setGender(gender: data)
        }
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    @IBAction func onClickMe(_ sender: UIButton) {

        print("Click me !!!")
        print(firstnameTF.text!)

    }
    
    

}
