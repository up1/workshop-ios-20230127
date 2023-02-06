//
//  ViewController.swift
//  day02
//
//  Created by Somkiat Puisungnoen on 6/2/2566 BE.
//

import UIKit

class ViewController: UIViewController, DetailProtocol {
    
    func setData(data: String) {
        print("Call setData = " + data)
    }
    

    @IBOutlet weak var messageTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onClickSayHi(_ sender: Any) {
        print("On click")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("Call prepare")
        let vc = segue.destination as! HelloViewController
        vc.message = messageTF.text!
    }
    
    
    @IBAction func onClickDetail(_ sender: Any) {
        print("Show detail page")
        if let vc = storyboard?.instantiateViewController(
                       withIdentifier: "detail_page") as? DetailViewController {
            vc.delegate = self
            self.navigationController?.pushViewController(vc, animated: true)

        }
    }
    
}

