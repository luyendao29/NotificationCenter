//
//  DetailViewController.swift
//  NotificationCenter
//
//  Created by Boss on 4/7/20.
//  Copyright © 2020 LuyệnĐào. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var dataTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    // Bắn data đi các nơi đã đăng kí nhận key
    @IBAction func onClickPushNotification(_ sender: Any) {
        // bắn dữ liệu thông qua object
//        NotificationCenter.default.post(name: keyData, object: dataTextField.text, userInfo: nil)
//        navigationController?.popViewController(animated: true)
        
        // // bắn dữ liệu thông qua dictionary userInfo
        NotificationCenter.default.post(name: keyData, object: nil, userInfo: ["text": dataTextField.text ?? ""])
        dismiss(animated: true, completion: nil)
        
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
