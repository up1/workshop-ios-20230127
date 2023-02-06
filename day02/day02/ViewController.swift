//
//  ViewController.swift
//  day02
//
//  Created by Somkiat Puisungnoen on 6/2/2566 BE.
//

import UIKit

class ViewController: UIViewController {

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

            self.navigationController?.pushViewController(vc, animated: true)

        }
    }
    
}

