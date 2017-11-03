//
//  NSLog.swift
//  Sample
//
//  Created by developer on 02/11/17.
//  Copyright © 2017 developer. All rights reserved.
//

import Foundation

public func NSLog(_ format: String, _ args: CVarArg...) {
  let message = String(format: format, arguments:args)
  print(message);
  TFLogv(message, getVaList([]))
}
