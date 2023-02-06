//
//  DetailViewController.swift
//  day02
//
//  Created by Somkiat Puisungnoen on 6/2/2566 BE.
//

import UIKit

typealias MyFunction = ((String) -> Void)?

class DetailViewController: UIViewController {
    
   
    @IBAction func onPressGender(_ sender: UIButton) {
        NotificationCenter.default.post(name: Notification.Name("DataNotification"),
                                        object: nil,
                                        userInfo: ["data": "Female" ])
        
        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
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
