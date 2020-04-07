//
//  ViewController.swift
//  NotificationCenter
//
//  Created by Boss on 4/7/20.
//  Copyright © 2020 LuyệnĐào. All rights reserved.
//

import UIKit

let keyData: NSNotification.Name = NSNotification.Name("dangkiNhanData")

class ViewController: UIViewController {
    
    @IBOutlet weak var titileLabel: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        registerNotification()
    }
    // Viewcontroller đăng kí nhận data
    func registerNotification() {
        
        NotificationCenter.default.addObserver(self, selector: #selector(heardData(_notification:)), name: keyData, object: nil)
    }
    @objc func heardData(_notification: Notification) {
//  Đăng kí nhận qua object
//        let data = _notification.object as? String
//        titileLabel.text = data
        
    // đăng kí nhận qua userInfo
        // do nó là optional nên muốn truy cập vào suggetion của nó thì phải dùng userInfo?[""]
        let data = _notification.userInfo?["text"] as? String
        titileLabel.text = data
    }
    
    @IBAction func ActionOnClick(_ sender: Any) {
        let storyborad = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        present(storyborad, animated: true, completion: nil)
    }
    
}

