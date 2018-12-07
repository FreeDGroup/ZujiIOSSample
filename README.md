# [Travelflan](https://www.travelflan.com/) Widget iOS Usage Sample For Zuji
![Platform](https://img.shields.io/badge/platform-iOS-orange.svg)
![Languages](https://img.shields.io/badge/language%20%7C%20Swift-orange.svg)

## Introduction

This repo demonstrated how to use the chatbot in ios app for Zuji project.

## Quick Start

1. Define an entry for the chatbot.
2. Open the chatbot view when clicked the entry.

## Usage
```
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
```

```
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
        let url = URL(string: "https://alpha-zuji-widget.travelflan.com.cn/?region=HK&locale=en_US&platform=ios")!
        webView.load(URLRequest(url: url))
        self.view.addSubview(webView)
    }
}
```
