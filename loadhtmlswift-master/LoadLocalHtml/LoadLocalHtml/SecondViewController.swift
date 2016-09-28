//
//  ViewController.swift
//  LoadLocalHtml
//
//  Created by Farhad on 9/20/16.
//  Copyright © 2016 WebInDream. All rights reserved.
//

import UIKit

class SecondViewController: CDVViewController {
  

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      
      let myWebView:UIWebView = UIWebView(frame: CGRectMake(0, 0, UIScreen.mainScreen().bounds.width, UIScreen.mainScreen().bounds.height))
      myWebView.loadRequest(NSURLRequest(URL: NSURL(string: "https://chat.voismart.it")!))
      self.view.addSubview(myWebView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  override func viewWillAppear(animated: Bool) {
      super.viewWillAppear(true);
      self.webView.frame = CGRectMake(
          self.view.bounds.origin.x,
          self.view.bounds.origin.y+40,
          self.view.bounds.width,
          self.view.bounds.height-40)
     }
  

    
}

