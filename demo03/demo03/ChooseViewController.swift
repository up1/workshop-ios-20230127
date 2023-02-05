//
//  ChooseViewController.swift
//  demo03
//
//  Created by Somkiat Puisungnoen on 5/2/2566 BE.
//

import UIKit

class ChooseViewController: UIViewController {
    
    @IBAction func pressGenderButton(_ sender: Any) {
        
        let data = "Some data"
        NotificationCenter.default.post(name: Notification.Name("DataNotification"), object: nil, userInfo: ["data": data])
        
        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
  

}
