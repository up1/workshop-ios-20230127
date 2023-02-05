//
//  ChooseViewController.swift
//  demo03
//
//  Created by Somkiat Puisungnoen on 5/2/2566 BE.
//

import UIKit

class ChooseViewController: UIViewController {
    
    var change : ((String) -> Void)?
    
    @IBAction func pressGenderButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: {
            self.change!("XXX")
        })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
  

}
