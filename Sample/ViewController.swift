//
//  ViewController.swift
//  Sample
//
//  Created by developer on 24/10/17.
//  Copyright © 2017 developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    print("App Name: ",ITUNE_APP_NAME)
    
    let showBtn = UIButton.init(type: UIButtonType.custom)
    showBtn.frame = CGRect(x: 250, y: 250, width: 40,height: 40)
    showBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignment.center
    showBtn.setTitle("Show", for: UIControlState())
    showBtn.addTarget(self, action: #selector(ViewController.showPassword(_:)), for: UIControlEvents.touchUpInside)
   
  
    
    showBtn.backgroundColor = .red
    
    self.view.addSubview(showBtn)
    
    let showBtn2 = UIButton.init(type: UIButtonType.custom)
    showBtn2.frame = CGRect(x: 100, y: 250, width: 40,height: 40)
    showBtn2.contentHorizontalAlignment = UIControlContentHorizontalAlignment.center
    showBtn2.setTitle("Show", for: UIControlState())
    showBtn2.addTarget(self, action: #selector(ViewController.showPassword2(_:)), for: UIControlEvents.touchUpInside)
    
    showBtn2.backgroundColor = .gray
    
    
    
    
    
    self.view.addSubview(showBtn2)

    
    
    // Do any additional setup after loading the view, typically from a nib.
  }

  func showPassword(_ btn:AnyObject)->Void
  {
      Extensions.setButtonTitle("Show")
    
    print("Title Name: ",Extensions.getButtonTitle())

  }
  
  func showPassword2(_ btn:AnyObject)->Void
  {
    fatalError()
    
    print("Title Name: ",Extensions.getButtonTitle())
    
  }
  
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

