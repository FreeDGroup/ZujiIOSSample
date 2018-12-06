//
//  HomeViewController.swift
//  ZujiIOSSample
//
//  Created by Tony Yan on 2018/12/6.
//  Copyright © 2018 Tony Yan. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "ZUJI Demo"
        self.view.backgroundColor = UIColor.white
        setOpenChatButton()
    }
    
    func setOpenChatButton(){
        let openChatButton = UIButton(frame: CGRect(x: 0, y: 0, width: 240, height: 40))
        openChatButton.center = self.view.center
        openChatButton.setTitleColor(UIColor.blue, for: .normal)
        openChatButton.setTitle("Open Chat", for:.normal)
        openChatButton.addTarget(self, action: #selector(openChatView), for: UIControl.Event.touchUpInside)
        self.view.addSubview(openChatButton)
    }
    
    @objc func openChatView(){
        let viewController = ChatViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}
