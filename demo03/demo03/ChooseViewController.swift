//
//  ChooseViewController.swift
//  demo03
//
//  Created by Somkiat Puisungnoen on 5/2/2566 BE.
//

import UIKit

class ChooseViewController: UIViewController {
    
    weak var delegate: ChooseDelegate?

    @IBAction func pressGenderButton(_ sender: Any) {
        
        delegate?.genderChoosen(gender: "Female")
        
        
        // Return to previous VC
        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
  

}
