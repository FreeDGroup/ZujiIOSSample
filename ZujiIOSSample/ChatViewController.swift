//
//  ChatViewController.swift
//  ZujiIOSSample
//
//  Created by Tony Yan on 2018/12/7.
//  Copyright © 2018 Tony Yan. All rights reserved.
//

import UIKit
import WebKit

class ChatViewController: UIViewController {
    var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "ZUJI Guru"
        self.view.backgroundColor = UIColor.white
        loadWebview()
    }
    
    func loadWebview() {
        let topBarHeight = UIApplication.shared.statusBarFrame.size.height + (self.navigationController?.navigationBar.frame.height ?? 0.0)
        webView = WKWebView(frame: CGRect(x: 0, y: topBarHeight, width: self.view.frame.width, height: self.view.frame.height - topBarHeight))
        // change the params' value if necessary
        let url = URL(string: "https://alpha-zuji-widget.travelflan.com.cn/?_location=HK&locale=en_US&platform=ios")!
        webView.load(URLRequest(url: url))
        self.view.addSubview(webView)
    }
}
