//
//  ViewController.swift
//  loading
//
//  Created by liuzhiya on 2021/1/16.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        

        view.backgroundColor = .lightText
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let timeout = DispatchTime.now() + .milliseconds(1000)
        DispatchQueue.main.asyncAfter(deadline: timeout) {
            let activity = TGActivityViewController(message: "消息...")
            self.present(activity, animated: true, completion: nil)
        }
        
    }
}

