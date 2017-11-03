//
//  Extensions.swift
//  Sample
//
//  Created by developer on 24/10/17.
//  Copyright © 2017 developer. All rights reserved.
//

import Foundation
import UIKit

class Extensions: NSObject,UITextFieldDelegate
{
  
  
  class func setButtonTitle(_ key:String)->Void
  {
    
    UserDefaults.standard.set(key, forKey:"ButtonTitle")
    UserDefaults.standard.synchronize()
  }
  
  
  class func getButtonTitle()->String
  {
    
    let Title = UserDefaults.standard.object(forKey: "ButtonTitle")
    if Title != nil
    {
      return Title as! String
    }
    else
    {
      return "No titles are set"
    }
    
  }
  
}
